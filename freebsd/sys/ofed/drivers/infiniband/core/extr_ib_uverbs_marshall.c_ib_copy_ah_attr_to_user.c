
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int reserved; int traffic_class; int hop_limit; int sgid_index; int flow_label; int dgid; } ;
struct ib_uverbs_ah_attr {int is_global; scalar_t__ reserved; int port_num; int static_rate; int src_path_bits; int sl; int dlid; TYPE_3__ grh; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_1__ dgid; } ;
struct ib_ah_attr {int ah_flags; int port_num; int static_rate; int src_path_bits; int sl; int dlid; TYPE_2__ grh; } ;


 int IB_AH_GRH ;
 int memcpy (int ,int ,int) ;
 int memset (int *,int ,int) ;

void ib_copy_ah_attr_to_user(struct ib_uverbs_ah_attr *dst,
        struct ib_ah_attr *src)
{
 memcpy(dst->grh.dgid, src->grh.dgid.raw, sizeof src->grh.dgid);
 dst->grh.flow_label = src->grh.flow_label;
 dst->grh.sgid_index = src->grh.sgid_index;
 dst->grh.hop_limit = src->grh.hop_limit;
 dst->grh.traffic_class = src->grh.traffic_class;
 memset(&dst->grh.reserved, 0, sizeof(dst->grh.reserved));
 dst->dlid = src->dlid;
 dst->sl = src->sl;
 dst->src_path_bits = src->src_path_bits;
 dst->static_rate = src->static_rate;
 dst->is_global = src->ah_flags & IB_AH_GRH ? 1 : 0;
 dst->port_num = src->port_num;
 dst->reserved = 0;
}
