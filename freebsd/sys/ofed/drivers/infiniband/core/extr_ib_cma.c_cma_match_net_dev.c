
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ bound_dev_if; int net; } ;
struct TYPE_5__ {scalar_t__ ss_family; } ;
struct rdma_addr {TYPE_3__ dev_addr; TYPE_2__ src_addr; } ;
struct TYPE_4__ {struct rdma_addr addr; } ;
struct rdma_cm_id {scalar_t__ port_num; scalar_t__ ps; int device; TYPE_1__ route; } ;
struct net_device {scalar_t__ if_index; } ;


 scalar_t__ AF_IB ;
 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ RDMA_PS_SDP ;
 scalar_t__ cma_protocol_roce_dev_port (int ,scalar_t__) ;
 int dev_net (struct net_device const*) ;
 scalar_t__ net_eq (int ,int ) ;

__attribute__((used)) static bool cma_match_net_dev(const struct rdma_cm_id *id,
         const struct net_device *net_dev,
         u8 port_num)
{
 const struct rdma_addr *addr = &id->route.addr;

 if (!net_dev) {
  if (id->port_num && id->port_num != port_num)
   return 0;

  if (id->ps == RDMA_PS_SDP) {
   if (addr->src_addr.ss_family == AF_INET ||
       addr->src_addr.ss_family == AF_INET6)
    return 1;
   return 0;
  }

  return addr->src_addr.ss_family == AF_IB ||
      cma_protocol_roce_dev_port(id->device, port_num);
 }

 return !addr->dev_addr.bound_dev_if ||
        (net_eq(dev_net(net_dev), addr->dev_addr.net) &&
  addr->dev_addr.bound_dev_if == net_dev->if_index);
}
