
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flags; int t_sndtlpbyte; int t_stats; int t_sndrexmitpack; int t_sndtlppack; } ;
struct tcp_bbr {size_t rc_bbr_state; } ;
struct bbr_sendmap {int r_flags; size_t r_bbr_state; } ;
typedef int int32_t ;


 size_t BBR_STATE_PROBE_BW ;
 int BBR_TLP ;
 int TCPSTAT_ADD (int ,int) ;
 int TCPSTAT_INC (int ) ;
 int TF_FORCEDATA ;
 int VOI_TCP_RETXPB ;
 int VOI_TCP_TXPB ;
 int bbr_do_error_accounting (struct tcpcb*,struct tcp_bbr*,struct bbr_sendmap*,int,int) ;
 int * bbr_state_lost ;
 int * bbr_state_resend ;
 int bbr_state_val (struct tcp_bbr*) ;
 int counter_u64_add (int ,int) ;
 int stats_voi_update_abs_u32 (int ,int ,int) ;
 int stats_voi_update_abs_u64 (int ,int ,int) ;
 int tcps_sndbyte ;
 int tcps_sndpack ;
 int tcps_sndprobe ;
 int tcps_sndrexmitbyte ;
 int tcps_sndrexmitpack ;
 int tcps_tlpresend_bytes ;
 int tcps_tlpresends ;

__attribute__((used)) static inline void
bbr_do_send_accounting(struct tcpcb *tp, struct tcp_bbr *bbr, struct bbr_sendmap *rsm, int32_t len, int32_t error)
{
 if (error) {
  bbr_do_error_accounting(tp, bbr, rsm, len, error);
  return;
 }
 if ((tp->t_flags & TF_FORCEDATA) && len == 1) {

  TCPSTAT_INC(tcps_sndprobe);




 } else if (rsm) {
  if (rsm->r_flags & BBR_TLP) {
  } else {

   tp->t_sndrexmitpack++;
   TCPSTAT_INC(tcps_sndrexmitpack);
   TCPSTAT_ADD(tcps_sndrexmitbyte, len);




  }




  counter_u64_add(bbr_state_lost[rsm->r_bbr_state], len);
  if (bbr->rc_bbr_state != BBR_STATE_PROBE_BW) {

   counter_u64_add(bbr_state_resend[bbr->rc_bbr_state], len);
  } else {





   counter_u64_add(bbr_state_resend[BBR_STATE_PROBE_BW], len);
   counter_u64_add(bbr_state_resend[(bbr_state_val(bbr) + 5)], len);
  }

  counter_u64_add(bbr_state_lost[16], len);
  counter_u64_add(bbr_state_resend[16], len);

  counter_u64_add(bbr_state_resend[17], len);
  counter_u64_add(bbr_state_lost[17], len);

 } else {

  TCPSTAT_INC(tcps_sndpack);
  TCPSTAT_ADD(tcps_sndbyte, len);

  counter_u64_add(bbr_state_resend[17], len);
  counter_u64_add(bbr_state_lost[17], len);




 }
}
