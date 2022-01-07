
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct rdma_dev_addr {int net; scalar_t__ bound_dev_if; } ;
struct net_device {int if_flags; } ;




 int EINVAL ;
 int ENODEV ;
 int IFF_LOOPBACK ;
 struct net_device* dev_get_by_index (int ,scalar_t__) ;
 int dev_put (struct net_device*) ;
 struct net_device* ip6_dev_find (int ,int ,int ) ;
 struct net_device* ip_dev_find (int ,int ) ;
 int rdma_copy_addr (struct rdma_dev_addr*,struct net_device*,int *) ;

int rdma_translate_ip(const struct sockaddr *addr,
        struct rdma_dev_addr *dev_addr)
{
 struct net_device *dev;
 int ret;

 if (dev_addr->bound_dev_if) {
  dev = dev_get_by_index(dev_addr->net, dev_addr->bound_dev_if);
 } else switch (addr->sa_family) {
 default:
  dev = ((void*)0);
  break;
 }

 if (dev != ((void*)0)) {

  if (dev->if_flags & IFF_LOOPBACK)
   ret = -EINVAL;
  else
   ret = rdma_copy_addr(dev_addr, dev, ((void*)0));
  dev_put(dev);
 } else {
  ret = -ENODEV;
 }
 return ret;
}
