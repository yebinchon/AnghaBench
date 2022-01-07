
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ether_type; } ;
struct TYPE_4__ {scalar_t__ ether_type; } ;
struct TYPE_6__ {TYPE_2__ val; TYPE_1__ mask; } ;
union ib_flow_spec {scalar_t__ type; int size; TYPE_3__ eth; } ;
struct ib_flow_attr {unsigned int num_of_specs; } ;


 int ETH_P_IP ;
 scalar_t__ IB_FLOW_SPEC_ETH ;
 scalar_t__ IB_FLOW_SPEC_IPV4 ;
 scalar_t__ htons (int) ;

__attribute__((used)) static bool is_valid_attr(const struct ib_flow_attr *flow_attr)
{
 union ib_flow_spec *ib_spec = (union ib_flow_spec *)(flow_attr + 1);
 bool has_ipv4_spec = 0;
 bool eth_type_ipv4 = 1;
 unsigned int spec_index;


 for (spec_index = 0; spec_index < flow_attr->num_of_specs; spec_index++) {
  if (ib_spec->type == IB_FLOW_SPEC_ETH &&
      ib_spec->eth.mask.ether_type) {
   if (!((ib_spec->eth.mask.ether_type == htons(0xffff)) &&
         ib_spec->eth.val.ether_type == htons(ETH_P_IP)))
    eth_type_ipv4 = 0;
  } else if (ib_spec->type == IB_FLOW_SPEC_IPV4) {
   has_ipv4_spec = 1;
  }
  ib_spec = (void *)ib_spec + ib_spec->size;
 }
 return !has_ipv4_spec || eth_type_ipv4;
}
