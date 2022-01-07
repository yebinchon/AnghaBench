
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mthca_qp_path {int g_mylmc; scalar_t__ mgid_index; void* sl_tclass_flowlabel; int rgid; int hop_limit; int static_rate; int rlid; } ;
struct TYPE_4__ {scalar_t__ gid_table_len; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {scalar_t__ sgid_index; int traffic_class; int flow_label; TYPE_2__ dgid; int hop_limit; } ;
struct ib_ah_attr {int src_path_bits; int ah_flags; int sl; TYPE_3__ grh; int static_rate; int dlid; } ;


 int IB_AH_GRH ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,int ,int) ;
 int mthca_dbg (struct mthca_dev*,char*,scalar_t__,scalar_t__) ;
 int mthca_get_rate (struct mthca_dev*,int ,int ) ;

__attribute__((used)) static int mthca_path_set(struct mthca_dev *dev, const struct ib_ah_attr *ah,
     struct mthca_qp_path *path, u8 port)
{
 path->g_mylmc = ah->src_path_bits & 0x7f;
 path->rlid = cpu_to_be16(ah->dlid);
 path->static_rate = mthca_get_rate(dev, ah->static_rate, port);

 if (ah->ah_flags & IB_AH_GRH) {
  if (ah->grh.sgid_index >= dev->limits.gid_table_len) {
   mthca_dbg(dev, "sgid_index (%u) too large. max is %d\n",
      ah->grh.sgid_index, dev->limits.gid_table_len-1);
   return -1;
  }

  path->g_mylmc |= 1 << 7;
  path->mgid_index = ah->grh.sgid_index;
  path->hop_limit = ah->grh.hop_limit;
  path->sl_tclass_flowlabel =
   cpu_to_be32((ah->sl << 28) |
        (ah->grh.traffic_class << 20) |
        (ah->grh.flow_label));
  memcpy(path->rgid, ah->grh.dgid.raw, 16);
 } else
  path->sl_tclass_flowlabel = cpu_to_be32(ah->sl << 28);

 return 0;
}
