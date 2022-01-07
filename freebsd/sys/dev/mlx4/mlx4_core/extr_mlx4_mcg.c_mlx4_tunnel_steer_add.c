
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_4__ {int dst_mac_msk; int dst_mac; } ;
struct TYPE_3__ {int * member_0; } ;
struct mlx4_spec_list {int list; void* id; TYPE_2__ eth; TYPE_1__ member_0; } ;
struct mlx4_net_trans_rule {int allow_loopback; int port; int qpn; int list; int priority; int promisc_mode; int exclusive; int queue_mode; } ;
struct mlx4_dev {int dummy; } ;
typedef unsigned char __be64 ;


 int ETH_ALEN ;
 int INIT_LIST_HEAD (int *) ;
 int MLX4_FS_REGULAR ;
 int MLX4_MAC_MASK ;
 int MLX4_NET_TRANS_Q_FIFO ;
 void* MLX4_NET_TRANS_RULE_ID_ETH ;
 void* MLX4_NET_TRANS_RULE_ID_VXLAN ;
 unsigned char cpu_to_be64 (int) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,unsigned char*,int ) ;
 int mlx4_flow_attach (struct mlx4_dev*,struct mlx4_net_trans_rule*,int *) ;

int mlx4_tunnel_steer_add(struct mlx4_dev *dev, unsigned char *addr,
     int port, int qpn, u16 prio, u64 *reg_id)
{
 int err;
 struct mlx4_spec_list spec_eth_outer = { {((void*)0)} };
 struct mlx4_spec_list spec_vxlan = { {((void*)0)} };
 struct mlx4_spec_list spec_eth_inner = { {((void*)0)} };

 struct mlx4_net_trans_rule rule = {
  .queue_mode = MLX4_NET_TRANS_Q_FIFO,
  .exclusive = 0,
  .allow_loopback = 1,
  .promisc_mode = MLX4_FS_REGULAR,
 };

 __be64 mac_mask = cpu_to_be64(MLX4_MAC_MASK << 16);

 rule.port = port;
 rule.qpn = qpn;
 rule.priority = prio;
 INIT_LIST_HEAD(&rule.list);

 spec_eth_outer.id = MLX4_NET_TRANS_RULE_ID_ETH;
 memcpy(spec_eth_outer.eth.dst_mac, addr, ETH_ALEN);
 memcpy(spec_eth_outer.eth.dst_mac_msk, &mac_mask, ETH_ALEN);

 spec_vxlan.id = MLX4_NET_TRANS_RULE_ID_VXLAN;
 spec_eth_inner.id = MLX4_NET_TRANS_RULE_ID_ETH;

 list_add_tail(&spec_eth_outer.list, &rule.list);
 list_add_tail(&spec_vxlan.list, &rule.list);
 list_add_tail(&spec_eth_inner.list, &rule.list);

 err = mlx4_flow_attach(dev, &rule, reg_id);
 return err;
}
