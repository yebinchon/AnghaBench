
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dst_mac; } ;
struct TYPE_3__ {int dst_mac; } ;
struct ib_flow_spec_eth {scalar_t__ type; int size; TYPE_2__ val; TYPE_1__ mask; } ;
struct ib_flow_attr {scalar_t__ type; int size; int num_of_specs; } ;


 scalar_t__ IB_FLOW_ATTR_NORMAL ;
 scalar_t__ IB_FLOW_SPEC_ETH ;
 scalar_t__ is_multicast_ether_addr (int ) ;

__attribute__((used)) static bool flow_is_multicast_only(struct ib_flow_attr *ib_attr)
{
 struct ib_flow_spec_eth *eth_spec;

 if (ib_attr->type != IB_FLOW_ATTR_NORMAL ||
     ib_attr->size < sizeof(struct ib_flow_attr) +
     sizeof(struct ib_flow_spec_eth) ||
     ib_attr->num_of_specs < 1)
  return 0;

 eth_spec = (struct ib_flow_spec_eth *)(ib_attr + 1);
 if (eth_spec->type != IB_FLOW_SPEC_ETH ||
     eth_spec->size != sizeof(*eth_spec))
  return 0;

 return is_multicast_ether_addr(eth_spec->mask.dst_mac) &&
        is_multicast_ether_addr(eth_spec->val.dst_mac);
}
