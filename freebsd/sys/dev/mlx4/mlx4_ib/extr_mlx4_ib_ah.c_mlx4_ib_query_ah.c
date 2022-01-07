
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int g_slid; int dgid; int gid_index; int hop_limit; int sl_tclass_flowlabel; scalar_t__ stat_rate; int dlid; int port_pd; } ;
struct TYPE_6__ {int sl_tclass_flowlabel; } ;
struct TYPE_10__ {TYPE_4__ ib; TYPE_1__ eth; } ;
struct mlx4_ib_ah {TYPE_5__ av; } ;
struct TYPE_7__ {int raw; } ;
struct TYPE_8__ {int traffic_class; int flow_label; TYPE_2__ dgid; int sgid_index; int hop_limit; } ;
struct ib_ah_attr {int port_num; int sl; int src_path_bits; TYPE_3__ grh; int ah_flags; scalar_t__ static_rate; int dlid; } ;
struct ib_ah {int device; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_AH_GRH ;
 int IB_LINK_LAYER_ETHERNET ;
 int IB_LINK_LAYER_INFINIBAND ;
 scalar_t__ MLX4_STAT_RATE_OFFSET ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 scalar_t__ mlx4_ib_ah_grh_present (struct mlx4_ib_ah*) ;
 int rdma_port_get_link_layer (int ,int) ;
 struct mlx4_ib_ah* to_mah (struct ib_ah*) ;

int mlx4_ib_query_ah(struct ib_ah *ibah, struct ib_ah_attr *ah_attr)
{
 struct mlx4_ib_ah *ah = to_mah(ibah);
 enum rdma_link_layer ll;

 memset(ah_attr, 0, sizeof *ah_attr);
 ah_attr->port_num = be32_to_cpu(ah->av.ib.port_pd) >> 24;
 ll = rdma_port_get_link_layer(ibah->device, ah_attr->port_num);
 if (ll == IB_LINK_LAYER_ETHERNET)
  ah_attr->sl = be32_to_cpu(ah->av.eth.sl_tclass_flowlabel) >> 29;
 else
  ah_attr->sl = be32_to_cpu(ah->av.ib.sl_tclass_flowlabel) >> 28;

 ah_attr->dlid = ll == IB_LINK_LAYER_INFINIBAND ? be16_to_cpu(ah->av.ib.dlid) : 0;
 if (ah->av.ib.stat_rate)
  ah_attr->static_rate = ah->av.ib.stat_rate - MLX4_STAT_RATE_OFFSET;
 ah_attr->src_path_bits = ah->av.ib.g_slid & 0x7F;

 if (mlx4_ib_ah_grh_present(ah)) {
  ah_attr->ah_flags = IB_AH_GRH;

  ah_attr->grh.traffic_class =
   be32_to_cpu(ah->av.ib.sl_tclass_flowlabel) >> 20;
  ah_attr->grh.flow_label =
   be32_to_cpu(ah->av.ib.sl_tclass_flowlabel) & 0xfffff;
  ah_attr->grh.hop_limit = ah->av.ib.hop_limit;
  ah_attr->grh.sgid_index = ah->av.ib.gid_index;
  memcpy(ah_attr->grh.dgid.raw, ah->av.ib.dgid, 16);
 }

 return 0;
}
