
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {int src_port; int dst_port; int dst_ip; int src_ip; int vlan_tag; int dst_mac; } ;
struct TYPE_24__ {int src_port; int dst_port; } ;
struct TYPE_14__ {TYPE_12__ mask; TYPE_9__ val; } ;
struct TYPE_21__ {int dst_ip; int src_ip; } ;
struct TYPE_23__ {TYPE_12__ mask; TYPE_6__ val; } ;
struct TYPE_19__ {TYPE_12__ mask; } ;
struct TYPE_16__ {int vlan_tag; int dst_mac; } ;
struct TYPE_18__ {TYPE_12__ mask; TYPE_1__ val; } ;
union ib_flow_spec {int type; TYPE_11__ tcp_udp; TYPE_8__ ipv4; TYPE_4__ ib; TYPE_3__ eth; } ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;
struct TYPE_13__ {int src_port_msk; int src_port; int dst_port_msk; int dst_port; } ;
struct TYPE_22__ {int dst_ip_msk; int dst_ip; int src_ip_msk; int src_ip; } ;
struct TYPE_20__ {void* qpn_mask; void* l3_qpn; } ;
struct TYPE_17__ {int vlan_tag_msk; int vlan_tag; int dst_mac_msk; int dst_mac; } ;
struct _rule_hw {int size; int id; TYPE_10__ tcp_udp; TYPE_7__ ipv4; TYPE_5__ ib; TYPE_2__ eth; } ;
typedef enum mlx4_net_trans_rule_id { ____Placeholder_mlx4_net_trans_rule_id } mlx4_net_trans_rule_id ;


 int EINVAL ;
 int ENOTSUPP ;
 int ETH_ALEN ;
 int FIELDS_NOT_SUPPORTED (TYPE_12__,int ) ;





 int LAST_ETH_FIELD ;
 int LAST_IB_FIELD ;
 int LAST_IPV4_FIELD ;
 int LAST_TCP_UDP_FIELD ;
 int MLX4_IB_FLOW_QPN_MASK ;
 int MLX4_NET_TRANS_RULE_ID_ETH ;
 int MLX4_NET_TRANS_RULE_ID_IB ;
 int MLX4_NET_TRANS_RULE_ID_IPV4 ;
 int MLX4_NET_TRANS_RULE_ID_TCP ;
 int MLX4_NET_TRANS_RULE_ID_UDP ;
 int cpu_to_be16 (scalar_t__) ;
 void* cpu_to_be32 (int ) ;
 int memcpy (int ,int ,int ) ;
 int mlx4_hw_rule_sz (struct mlx4_dev*,int) ;
 scalar_t__ mlx4_map_sw_to_hw_steering_id (struct mlx4_dev*,int) ;

__attribute__((used)) static int parse_flow_attr(struct mlx4_dev *dev,
      u32 qp_num,
      union ib_flow_spec *ib_spec,
      struct _rule_hw *mlx4_spec)
{
 enum mlx4_net_trans_rule_id type;

 switch (ib_spec->type) {
 case 132:
  if (FIELDS_NOT_SUPPORTED(ib_spec->eth.mask, LAST_ETH_FIELD))
   return -ENOTSUPP;

  type = MLX4_NET_TRANS_RULE_ID_ETH;
  memcpy(mlx4_spec->eth.dst_mac, ib_spec->eth.val.dst_mac,
         ETH_ALEN);
  memcpy(mlx4_spec->eth.dst_mac_msk, ib_spec->eth.mask.dst_mac,
         ETH_ALEN);
  mlx4_spec->eth.vlan_tag = ib_spec->eth.val.vlan_tag;
  mlx4_spec->eth.vlan_tag_msk = ib_spec->eth.mask.vlan_tag;
  break;
 case 131:
  if (FIELDS_NOT_SUPPORTED(ib_spec->ib.mask, LAST_IB_FIELD))
   return -ENOTSUPP;

  type = MLX4_NET_TRANS_RULE_ID_IB;
  mlx4_spec->ib.l3_qpn =
   cpu_to_be32(qp_num);
  mlx4_spec->ib.qpn_mask =
   cpu_to_be32(MLX4_IB_FLOW_QPN_MASK);
  break;


 case 130:
  if (FIELDS_NOT_SUPPORTED(ib_spec->ipv4.mask, LAST_IPV4_FIELD))
   return -ENOTSUPP;

  type = MLX4_NET_TRANS_RULE_ID_IPV4;
  mlx4_spec->ipv4.src_ip = ib_spec->ipv4.val.src_ip;
  mlx4_spec->ipv4.src_ip_msk = ib_spec->ipv4.mask.src_ip;
  mlx4_spec->ipv4.dst_ip = ib_spec->ipv4.val.dst_ip;
  mlx4_spec->ipv4.dst_ip_msk = ib_spec->ipv4.mask.dst_ip;
  break;

 case 129:
 case 128:
  if (FIELDS_NOT_SUPPORTED(ib_spec->tcp_udp.mask, LAST_TCP_UDP_FIELD))
   return -ENOTSUPP;

  type = ib_spec->type == 129 ?
     MLX4_NET_TRANS_RULE_ID_TCP :
     MLX4_NET_TRANS_RULE_ID_UDP;
  mlx4_spec->tcp_udp.dst_port = ib_spec->tcp_udp.val.dst_port;
  mlx4_spec->tcp_udp.dst_port_msk = ib_spec->tcp_udp.mask.dst_port;
  mlx4_spec->tcp_udp.src_port = ib_spec->tcp_udp.val.src_port;
  mlx4_spec->tcp_udp.src_port_msk = ib_spec->tcp_udp.mask.src_port;
  break;

 default:
  return -EINVAL;
 }
 if (mlx4_map_sw_to_hw_steering_id(dev, type) < 0 ||
     mlx4_hw_rule_sz(dev, type) < 0)
  return -EINVAL;
 mlx4_spec->id = cpu_to_be16(mlx4_map_sw_to_hw_steering_id(dev, type));
 mlx4_spec->size = mlx4_hw_rule_sz(dev, type) >> 2;
 return mlx4_hw_rule_sz(dev, type);
}
