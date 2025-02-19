
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct in6_addr {int dummy; } ;
struct ib_gid_attr {int ndev; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ raw; } ;
struct TYPE_3__ {int hop_limit; TYPE_2__ dgid; int sgid_index; } ;
struct ib_ah_attr {scalar_t__ port_num; TYPE_1__ grh; scalar_t__ dmac; } ;
typedef int __be32 ;


 int EINVAL ;
 int ENXIO ;
 int dev_put (int ) ;
 int ib_query_gid (struct ib_device*,scalar_t__,int ,union ib_gid*,struct ib_gid_attr*) ;
 int ip_eth_mc_map (int ,char*) ;
 scalar_t__ ipv6_addr_v4mapped (struct in6_addr*) ;
 int ipv6_eth_mc_map (struct in6_addr*,char*) ;
 int memcpy (int *,scalar_t__,int) ;
 int rdma_addr_find_l2_eth_by_grh (union ib_gid*,TYPE_2__*,scalar_t__,int ,int*) ;
 int rdma_cap_eth_ah (struct ib_device*,scalar_t__) ;
 scalar_t__ rdma_end_port (struct ib_device*) ;
 scalar_t__ rdma_is_multicast_addr (struct in6_addr*) ;
 scalar_t__ rdma_start_port (struct ib_device*) ;

int ib_resolve_eth_dmac(struct ib_device *device,
   struct ib_ah_attr *ah_attr)
{
 struct ib_gid_attr sgid_attr;
 union ib_gid sgid;
 int hop_limit;
 int ret;

 if (ah_attr->port_num < rdma_start_port(device) ||
     ah_attr->port_num > rdma_end_port(device))
  return -EINVAL;

 if (!rdma_cap_eth_ah(device, ah_attr->port_num))
  return 0;

 if (rdma_is_multicast_addr((struct in6_addr *)ah_attr->grh.dgid.raw)) {
  if (ipv6_addr_v4mapped((struct in6_addr *)ah_attr->grh.dgid.raw)) {
   __be32 addr = 0;

   memcpy(&addr, ah_attr->grh.dgid.raw + 12, 4);
   ip_eth_mc_map(addr, (char *)ah_attr->dmac);
  } else {
   ipv6_eth_mc_map((struct in6_addr *)ah_attr->grh.dgid.raw,
     (char *)ah_attr->dmac);
  }
  return 0;
 }

 ret = ib_query_gid(device,
      ah_attr->port_num,
      ah_attr->grh.sgid_index,
      &sgid, &sgid_attr);
 if (ret != 0)
  return (ret);
 if (!sgid_attr.ndev)
  return -ENXIO;

 ret = rdma_addr_find_l2_eth_by_grh(&sgid,
        &ah_attr->grh.dgid,
        ah_attr->dmac,
        sgid_attr.ndev, &hop_limit);
 dev_put(sgid_attr.ndev);

 ah_attr->grh.hop_limit = hop_limit;
 return ret;
}
