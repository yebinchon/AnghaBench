
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct rdma_dev_addr {int dev_type; int bound_dev_if; int net; } ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int const ARPHRD_ETHER ;
 int const ARPHRD_INFINIBAND ;
 int ENODEV ;
 int IB_GID_TYPE_IB ;
 struct net_device* dev_get_by_index (int ,int ) ;
 int dev_put (struct net_device*) ;
 int ib_find_cached_gid_by_port (struct ib_device*,union ib_gid*,int,int ,struct net_device*,int *) ;
 scalar_t__ rdma_protocol_ib (struct ib_device*,int ) ;
 scalar_t__ rdma_protocol_roce (struct ib_device*,int ) ;

__attribute__((used)) static inline int cma_validate_port(struct ib_device *device, u8 port,
        enum ib_gid_type gid_type,
        union ib_gid *gid,
        const struct rdma_dev_addr *dev_addr)
{
 const int dev_type = dev_addr->dev_type;
 struct net_device *ndev;
 int ret = -ENODEV;

 if ((dev_type == ARPHRD_INFINIBAND) && !rdma_protocol_ib(device, port))
  return ret;

 if ((dev_type != ARPHRD_INFINIBAND) && rdma_protocol_ib(device, port))
  return ret;

 if (dev_type == ARPHRD_ETHER && rdma_protocol_roce(device, port)) {
  ndev = dev_get_by_index(dev_addr->net, dev_addr->bound_dev_if);
 } else {
  ndev = ((void*)0);
  gid_type = IB_GID_TYPE_IB;
 }

 ret = ib_find_cached_gid_by_port(device, gid, gid_type, port,
      ndev, ((void*)0));

 if (ndev)
  dev_put(ndev);

 return ret;
}
