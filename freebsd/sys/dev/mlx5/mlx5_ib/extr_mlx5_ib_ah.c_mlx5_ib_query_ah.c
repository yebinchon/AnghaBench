
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int stat_rate_sl; int rlid; int tclass; int hop_limit; int rgid; int grh_gid_fl; } ;
struct mlx5_ib_ah {TYPE_2__ av; } ;
struct TYPE_3__ {int sgid_index; int flow_label; int traffic_class; int hop_limit; int dgid; } ;
struct ib_ah_attr {int static_rate; int sl; int dlid; TYPE_1__ grh; int ah_flags; } ;
struct ib_ah {int dummy; } ;


 int IB_AH_GRH ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 struct mlx5_ib_ah* to_mah (struct ib_ah*) ;

int mlx5_ib_query_ah(struct ib_ah *ibah, struct ib_ah_attr *ah_attr)
{
 struct mlx5_ib_ah *ah = to_mah(ibah);
 u32 tmp;

 memset(ah_attr, 0, sizeof(*ah_attr));

 tmp = be32_to_cpu(ah->av.grh_gid_fl);
 if (tmp & (1 << 30)) {
  ah_attr->ah_flags = IB_AH_GRH;
  ah_attr->grh.sgid_index = (tmp >> 20) & 0xff;
  ah_attr->grh.flow_label = tmp & 0xfffff;
  memcpy(&ah_attr->grh.dgid, ah->av.rgid, 16);
  ah_attr->grh.hop_limit = ah->av.hop_limit;
  ah_attr->grh.traffic_class = ah->av.tclass;
 }
 ah_attr->dlid = be16_to_cpu(ah->av.rlid);
 ah_attr->static_rate = ah->av.stat_rate_sl >> 4;
 ah_attr->sl = ah->av.stat_rate_sl & 0xf;

 return 0;
}
