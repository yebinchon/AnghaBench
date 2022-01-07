
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct rdma_dev_addr {int net; } ;
struct net_device {int dummy; } ;
struct epoch_tracker {int dummy; } ;




 int EADDRNOTAVAIL ;
 int EINVAL ;
 int MAX_ADDR_LEN ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int addr4_resolve (struct sockaddr_in*,struct sockaddr_in const*,struct rdma_dev_addr*,int *,struct net_device**) ;
 int addr6_resolve (struct sockaddr_in6*,struct sockaddr_in6 const*,struct rdma_dev_addr*,int *,struct net_device**) ;
 int addr_resolve_neigh (struct net_device*,struct sockaddr const*,int *,struct rdma_dev_addr*) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;

__attribute__((used)) static int addr_resolve(struct sockaddr *src_in,
   const struct sockaddr *dst_in,
   struct rdma_dev_addr *addr)
{
 struct epoch_tracker et;
 struct net_device *ndev = ((void*)0);
 u8 edst[MAX_ADDR_LEN];
 int ret;

 if (dst_in->sa_family != src_in->sa_family)
  return -EINVAL;

 NET_EPOCH_ENTER(et);
 switch (src_in->sa_family) {
 case 129:
  ret = addr4_resolve((struct sockaddr_in *)src_in,
        (const struct sockaddr_in *)dst_in,
        addr, edst, &ndev);
  break;
 case 128:
  ret = addr6_resolve((struct sockaddr_in6 *)src_in,
        (const struct sockaddr_in6 *)dst_in, addr,
        edst, &ndev);
  break;
 default:
  ret = -EADDRNOTAVAIL;
  break;
 }
 NET_EPOCH_EXIT(et);


 if (ret != 0)
  return ret;


 ret = addr_resolve_neigh(ndev, dst_in, edst, addr);


 addr->net = dev_net(ndev);
 dev_put(ndev);

 return ret;
}
