
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int t_flags; } ;
struct TYPE_2__ {int rc_lost_bytes; int rc_lost; int rc_tmap; int rc_map; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_flags; size_t r_rtr_cnt; scalar_t__ r_dupack; scalar_t__ r_end; scalar_t__ r_start; int * r_tim_lastsent; } ;
typedef size_t int32_t ;


 int BBR_ACKED ;
 int BBR_MARKED_LOST ;
 int BBR_SACK_PASSED ;
 int CC_NDUPACK ;
 scalar_t__ DUP_ACK_THRESHOLD ;
 scalar_t__ SEQ_LEQ (int ,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct bbr_sendmap* TAILQ_FIRST (int *) ;
 int TF_SENTFIN ;
 int bbr_cong_signal (struct tcpcb*,int *,int ,struct bbr_sendmap*) ;
 struct bbr_sendmap* bbr_find_lowest_rsm (struct tcp_bbr*) ;
 scalar_t__ bbr_is_lost (struct tcp_bbr*,struct bbr_sendmap*,int ) ;
 int panic (char*,struct tcpcb*,struct tcp_bbr*,struct bbr_sendmap*) ;

__attribute__((used)) static struct bbr_sendmap *
bbr_check_recovery_mode(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts)
{






 struct bbr_sendmap *rsm;
 int32_t idx;

 if (TAILQ_EMPTY(&bbr->r_ctl.rc_map)) {

  return (((void*)0));
 }
 rsm = TAILQ_FIRST(&bbr->r_ctl.rc_tmap);
 if (rsm == ((void*)0)) {

  return (((void*)0));
 }
 if (tp->t_flags & TF_SENTFIN) {

  return (((void*)0));
 }
 if (rsm->r_flags & BBR_ACKED) {




  rsm = bbr_find_lowest_rsm(bbr);
  if (rsm == ((void*)0))
   return (((void*)0));
 }
 idx = rsm->r_rtr_cnt - 1;
 if (SEQ_LEQ(cts, rsm->r_tim_lastsent[idx])) {

  return (((void*)0));
 }

 if (bbr_is_lost(bbr, rsm, cts) &&
     ((rsm->r_dupack >= DUP_ACK_THRESHOLD) ||
      (rsm->r_flags & BBR_SACK_PASSED))) {
  if ((rsm->r_flags & BBR_MARKED_LOST) == 0) {
   rsm->r_flags |= BBR_MARKED_LOST;
   bbr->r_ctl.rc_lost += rsm->r_end - rsm->r_start;
   bbr->r_ctl.rc_lost_bytes += rsm->r_end - rsm->r_start;
  }
  bbr_cong_signal(tp, ((void*)0), CC_NDUPACK, rsm);




  return (rsm);
 }
 return (((void*)0));
}
