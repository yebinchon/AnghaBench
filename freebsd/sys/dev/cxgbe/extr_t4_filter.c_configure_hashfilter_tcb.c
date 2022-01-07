
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int hash; scalar_t__ newvlan; int nat_mode; scalar_t__ action; scalar_t__ hitcnts; scalar_t__ nat_seq_chk; scalar_t__ newsmac; scalar_t__ newdmac; } ;
struct filter_entry {scalar_t__ tid; int pending; scalar_t__ valid; TYPE_3__ fs; TYPE_2__* smt; } ;
struct TYPE_4__ {scalar_t__ ntids; } ;
struct adapter {TYPE_1__ tids; } ;
struct TYPE_5__ {int idx; } ;


 int EINPROGRESS ;
 scalar_t__ FILTER_DROP ;
 scalar_t__ FILTER_SWITCH ;
 int MPASS (int) ;
 scalar_t__ M_TCB_RCV_NXT ;
 int M_TCB_SMAC_SEL ;
 unsigned long long M_TCB_TIMESTAMP ;
 unsigned long long M_TCB_T_RTT_TS_RECENT_AGE ;
 int S_TF_CCTRL_CWR ;
 int S_TF_CCTRL_ECE ;
 int S_TF_CCTRL_ECN ;
 int S_TF_CCTRL_RFR ;
 scalar_t__ VLAN_INSERT ;
 scalar_t__ VLAN_REWRITE ;
 int V_TCB_RCV_NXT (scalar_t__) ;
 int V_TCB_SMAC_SEL (int ) ;
 int V_TCB_TIMESTAMP (unsigned long long) ;
 int V_TCB_T_RTT_TS_RECENT_AGE (unsigned long long) ;
 int V_TF_MIGRATING (int) ;
 int V_TF_NON_OFFLOAD (int) ;
 int W_TCB_RCV_NXT ;
 int W_TCB_SMAC_SEL ;
 int W_TCB_TIMESTAMP ;
 int W_TCB_T_FLAGS ;
 scalar_t__ is_t5 (struct adapter*) ;
 int set_nat_params (struct adapter*,struct filter_entry*,int,int,int,int) ;
 int set_tcb_field (struct adapter*,scalar_t__,int ,int,int,int) ;
 int set_tcb_tflag (struct adapter*,scalar_t__,int ,int,int) ;

__attribute__((used)) static int
configure_hashfilter_tcb(struct adapter *sc, struct filter_entry *f)
{
 int updated = 0;

 MPASS(f->tid < sc->tids.ntids);
 MPASS(f->fs.hash);
 MPASS(f->pending);
 MPASS(f->valid == 0);

 if (f->fs.newdmac) {
  set_tcb_tflag(sc, f->tid, S_TF_CCTRL_ECE, 1, 1);
  updated++;
 }

 if (f->fs.newvlan == VLAN_INSERT || f->fs.newvlan == VLAN_REWRITE) {
  set_tcb_tflag(sc, f->tid, S_TF_CCTRL_RFR, 1, 1);
  updated++;
 }

 if (f->fs.newsmac) {
  MPASS(f->smt != ((void*)0));
  set_tcb_tflag(sc, f->tid, S_TF_CCTRL_CWR, 1, 1);
  set_tcb_field(sc, f->tid, W_TCB_SMAC_SEL,
      V_TCB_SMAC_SEL(M_TCB_SMAC_SEL), V_TCB_SMAC_SEL(f->smt->idx),
      1);
  updated++;
 }

 switch(f->fs.nat_mode) {
 case 129:
  break;
 case 134:
  set_nat_params(sc, f, 1, 0, 0, 0);
  updated++;
  break;
 case 133:
  set_nat_params(sc, f, 1, 0, 1, 0);
  updated++;
  break;
 case 132:
  set_nat_params(sc, f, 1, 1, 1, 0);
  updated++;
  break;
 case 131:
  set_nat_params(sc, f, 1, 0, 1, 1);
  updated++;
  break;
 case 128:
  set_nat_params(sc, f, 0, 1, 0, 1);
  updated++;
  break;
 case 130:
  set_nat_params(sc, f, 1, 1, 0, 1);
  updated++;
  break;
 case 135:
  set_nat_params(sc, f, 1, 1, 1, 1);
  updated++;
  break;
 default:
  MPASS(0);
  break;

 }

 if (f->fs.nat_seq_chk) {
  set_tcb_field(sc, f->tid, W_TCB_RCV_NXT,
      V_TCB_RCV_NXT(M_TCB_RCV_NXT),
      V_TCB_RCV_NXT(f->fs.nat_seq_chk), 1);
  updated++;
 }

 if (is_t5(sc) && f->fs.action == FILTER_DROP) {



  set_tcb_field(sc, f->tid, W_TCB_T_FLAGS, V_TF_NON_OFFLOAD(1) |
      V_TF_MIGRATING(1), V_TF_MIGRATING(1), 1);
  updated++;
 }






 if (f->fs.action == FILTER_SWITCH) {
  set_tcb_tflag(sc, f->tid, S_TF_CCTRL_ECN, 1, 1);
  updated++;
 }

 if (f->fs.hitcnts || updated > 0) {
  set_tcb_field(sc, f->tid, W_TCB_TIMESTAMP,
      V_TCB_TIMESTAMP(M_TCB_TIMESTAMP) |
      V_TCB_T_RTT_TS_RECENT_AGE(M_TCB_T_RTT_TS_RECENT_AGE),
      V_TCB_TIMESTAMP(0ULL) | V_TCB_T_RTT_TS_RECENT_AGE(0ULL), 0);
  return (EINPROGRESS);
 }

 return (0);
}
