
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_addr {int bound_dev_if; int dst_dev_addr; int broadcast; int src_dev_addr; void* dev_type; } ;
struct net_device {int if_flags; scalar_t__ if_type; unsigned char const* if_broadcastaddr; int if_index; int if_addrlen; } ;


 void* ARPHRD_ETHER ;
 void* ARPHRD_INFINIBAND ;
 int IFF_LOOPBACK ;
 scalar_t__ IFT_ETHER ;
 scalar_t__ IFT_INFINIBAND ;
 unsigned char const* IF_LLADDR (struct net_device*) ;
 int MAX_ADDR_LEN ;
 int memset (int ,int ,int ) ;
 int rdma_copy_addr_sub (int ,unsigned char const*,int ,int ) ;

int rdma_copy_addr(struct rdma_dev_addr *dev_addr, struct net_device *dev,
       const unsigned char *dst_dev_addr)
{

 if (dev->if_flags & IFF_LOOPBACK) {
  dev_addr->dev_type = ARPHRD_ETHER;
  memset(dev_addr->src_dev_addr, 0, MAX_ADDR_LEN);
  memset(dev_addr->broadcast, 0, MAX_ADDR_LEN);
  memset(dev_addr->dst_dev_addr, 0, MAX_ADDR_LEN);
  dev_addr->bound_dev_if = dev->if_index;
  return (0);
 } else if (dev->if_type == IFT_INFINIBAND)
  dev_addr->dev_type = ARPHRD_INFINIBAND;
 else if (dev->if_type == IFT_ETHER)
  dev_addr->dev_type = ARPHRD_ETHER;
 else
  dev_addr->dev_type = 0;
 rdma_copy_addr_sub(dev_addr->src_dev_addr, IF_LLADDR(dev),
      dev->if_addrlen, MAX_ADDR_LEN);
 rdma_copy_addr_sub(dev_addr->broadcast, dev->if_broadcastaddr,
      dev->if_addrlen, MAX_ADDR_LEN);
 if (dst_dev_addr != ((void*)0)) {
  rdma_copy_addr_sub(dev_addr->dst_dev_addr, dst_dev_addr,
       dev->if_addrlen, MAX_ADDR_LEN);
 }
 dev_addr->bound_dev_if = dev->if_index;
 return 0;
}
