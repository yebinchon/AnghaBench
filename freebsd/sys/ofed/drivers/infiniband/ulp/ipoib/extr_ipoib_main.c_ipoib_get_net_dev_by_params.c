
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
typedef int u16 ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;
struct ib_device {int dev; } ;


 int __ipoib_get_net_dev_by_params (struct list_head*,int ,int ,union ib_gid const*,struct sockaddr const*,struct net_device**) ;
 int dev_put (struct net_device*) ;
 int dev_warn_ratelimited (int *,char*) ;
 int ib_find_cached_pkey (struct ib_device*,int ,int ,int *) ;
 int rdma_protocol_ib (struct ib_device*,int ) ;

__attribute__((used)) static struct net_device *
ipoib_get_net_dev_by_params(struct ib_device *dev, u8 port, u16 pkey,
    const union ib_gid *gid, const struct sockaddr *addr, void *client_data)
{
 struct net_device *net_dev;
 struct list_head *dev_list = client_data;
 u16 pkey_index;
 int matches;
 int ret;

 if (!rdma_protocol_ib(dev, port))
  return ((void*)0);

 ret = ib_find_cached_pkey(dev, port, pkey, &pkey_index);
 if (ret)
  return ((void*)0);

 if (!dev_list)
  return ((void*)0);


 matches = __ipoib_get_net_dev_by_params(dev_list, port, pkey_index,
      gid, ((void*)0), &net_dev);

 switch (matches) {
 case 0:
  return ((void*)0);
 case 1:
  return net_dev;
 }

 dev_put(net_dev);



 matches = __ipoib_get_net_dev_by_params(dev_list, port, pkey_index,
      gid, addr, &net_dev);
 switch (matches) {
 case 0:
  return ((void*)0);
 default:
  dev_warn_ratelimited(&dev->dev,
         "duplicate IP address detected\n");

 case 1:
  return net_dev;
 }
}
