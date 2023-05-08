# !/bin/bash
hosts=(compute028 compute031)

for host in ${hosts[*]} ;do 
    ssh root@$host "mkdir -p /root/yongqi/rdma-demo"
    scp ./* root@$host:/root/yongqi/rdma-demo
    ssh root@$host "cd /root/yongqi/rdma-demo; make "
done 