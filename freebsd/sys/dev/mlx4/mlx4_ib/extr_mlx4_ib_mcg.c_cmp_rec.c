
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ib_sa_mcmember_data {scalar_t__ qkey; scalar_t__ mlid; scalar_t__ tclass; scalar_t__ pkey; int scope_join_state; int sl_flowlabel_hoplimit; int lifetmsel_lifetm; int ratesel_rate; int mtusel_mtu; } ;
typedef int ib_sa_comp_mask ;


 int IB_SA_MCMEMBER_REC_FLOW_LABEL ;
 int IB_SA_MCMEMBER_REC_HOP_LIMIT ;
 int IB_SA_MCMEMBER_REC_MLID ;
 int IB_SA_MCMEMBER_REC_MTU ;
 int IB_SA_MCMEMBER_REC_MTU_SELECTOR ;
 int IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME ;
 int IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME_SELECTOR ;
 int IB_SA_MCMEMBER_REC_PKEY ;
 int IB_SA_MCMEMBER_REC_QKEY ;
 int IB_SA_MCMEMBER_REC_RATE ;
 int IB_SA_MCMEMBER_REC_RATE_SELECTOR ;
 int IB_SA_MCMEMBER_REC_SCOPE ;
 int IB_SA_MCMEMBER_REC_SL ;
 int IB_SA_MCMEMBER_REC_TRAFFIC_CLASS ;
 int MAD_STATUS_REQ_INVALID ;
 int be32_to_cpu (int ) ;
 scalar_t__ check_selector (int,int ,int ,int ,int ) ;

__attribute__((used)) static u16 cmp_rec(struct ib_sa_mcmember_data *src,
     struct ib_sa_mcmember_data *dst, ib_sa_comp_mask comp_mask)
{





 if (comp_mask & IB_SA_MCMEMBER_REC_QKEY && src->qkey != dst->qkey)
  return 0x0200;
 if (comp_mask & IB_SA_MCMEMBER_REC_MLID && src->mlid != dst->mlid)
  return 0x0200;
 if (check_selector(comp_mask, IB_SA_MCMEMBER_REC_MTU_SELECTOR,
     IB_SA_MCMEMBER_REC_MTU,
     src->mtusel_mtu, dst->mtusel_mtu))
  return 0x0200;
 if (comp_mask & IB_SA_MCMEMBER_REC_TRAFFIC_CLASS &&
     src->tclass != dst->tclass)
  return 0x0200;
 if (comp_mask & IB_SA_MCMEMBER_REC_PKEY && src->pkey != dst->pkey)
  return 0x0200;
 if (check_selector(comp_mask, IB_SA_MCMEMBER_REC_RATE_SELECTOR,
     IB_SA_MCMEMBER_REC_RATE,
     src->ratesel_rate, dst->ratesel_rate))
  return 0x0200;
 if (check_selector(comp_mask,
     IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME_SELECTOR,
     IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME,
     src->lifetmsel_lifetm, dst->lifetmsel_lifetm))
  return 0x0200;
 if (comp_mask & IB_SA_MCMEMBER_REC_SL &&
   (be32_to_cpu(src->sl_flowlabel_hoplimit) & 0xf0000000) !=
   (be32_to_cpu(dst->sl_flowlabel_hoplimit) & 0xf0000000))
  return 0x0200;
 if (comp_mask & IB_SA_MCMEMBER_REC_FLOW_LABEL &&
   (be32_to_cpu(src->sl_flowlabel_hoplimit) & 0x0fffff00) !=
   (be32_to_cpu(dst->sl_flowlabel_hoplimit) & 0x0fffff00))
  return 0x0200;
 if (comp_mask & IB_SA_MCMEMBER_REC_HOP_LIMIT &&
   (be32_to_cpu(src->sl_flowlabel_hoplimit) & 0x000000ff) !=
   (be32_to_cpu(dst->sl_flowlabel_hoplimit) & 0x000000ff))
  return 0x0200;
 if (comp_mask & IB_SA_MCMEMBER_REC_SCOPE &&
   (src->scope_join_state & 0xf0) !=
   (dst->scope_join_state & 0xf0))
  return 0x0200;



 return 0;
}
