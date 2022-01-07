
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {scalar_t__ bound_dev_if; int src_dev_addr; int dst_dev_addr; } ;
struct ifnet {int if_flags; scalar_t__ if_index; } ;


 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int MAX_ADDR_LEN ;
 int memcpy (int ,int ,int ) ;
 int rdma_copy_addr (struct rdma_dev_addr*,struct ifnet*,int *) ;
 int rdma_translate_ip (struct sockaddr const*,struct rdma_dev_addr*) ;

__attribute__((used)) static int addr_resolve_neigh(struct ifnet *dev,
         const struct sockaddr *dst_in,
         u8 *edst,
         struct rdma_dev_addr *addr)
{
 if (dev->if_flags & IFF_LOOPBACK) {
  int ret;






  if (addr->bound_dev_if == dev->if_index)
   addr->bound_dev_if = 0;

  ret = rdma_translate_ip(dst_in, addr);
  if (ret == 0) {
   memcpy(addr->dst_dev_addr, addr->src_dev_addr,
          MAX_ADDR_LEN);
  }
  return ret;
 }


 if (!(dev->if_flags & IFF_NOARP))
  return rdma_copy_addr(addr, dev, edst);

 return rdma_copy_addr(addr, dev, ((void*)0));
}
