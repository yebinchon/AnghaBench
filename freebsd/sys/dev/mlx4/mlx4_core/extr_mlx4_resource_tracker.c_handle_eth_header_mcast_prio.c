
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_net_trans_rule_hw_eth {int dummy; } ;
struct mlx4_net_trans_rule_hw_ctrl {int prio; } ;
struct TYPE_2__ {int dst_mac; } ;
struct _rule_hw {scalar_t__ size; scalar_t__ id; scalar_t__ rsvd; TYPE_1__ eth; } ;


 int MLX4_DOMAIN_NIC ;
 int cpu_to_be16 (int ) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

__attribute__((used)) static void handle_eth_header_mcast_prio(struct mlx4_net_trans_rule_hw_ctrl *ctrl,
      struct _rule_hw *eth_header)
{
 if (is_multicast_ether_addr(eth_header->eth.dst_mac) ||
     is_broadcast_ether_addr(eth_header->eth.dst_mac)) {
  struct mlx4_net_trans_rule_hw_eth *eth =
   (struct mlx4_net_trans_rule_hw_eth *)eth_header;
  struct _rule_hw *next_rule = (struct _rule_hw *)(eth + 1);
  bool last_rule = next_rule->size == 0 && next_rule->id == 0 &&
   next_rule->rsvd == 0;

  if (last_rule)
   ctrl->prio = cpu_to_be16(MLX4_DOMAIN_NIC);
 }
}
