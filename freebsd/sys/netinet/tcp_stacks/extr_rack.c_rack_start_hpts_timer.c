
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct tcpcb {scalar_t__ t_state; int t_flags; int snd_una; int snd_max; struct inpcb* t_inpcb; } ;
struct TYPE_5__ {int rc_timer_exp; int rc_hpts_flags; int rc_last_output_to; } ;
struct tcp_rack {int rc_tmr_stopped; TYPE_3__* rc_inp; TYPE_2__ r_ctl; scalar_t__ sack_attack_disable; scalar_t__ tlp_timer_up; } ;
struct inpcb {int inp_flags2; TYPE_1__* inp_socket; scalar_t__ inp_in_hpts; } ;
typedef int int32_t ;
struct TYPE_6__ {scalar_t__ inp_in_hpts; int inp_flags2; } ;
struct TYPE_4__ {int so_options; } ;


 int HPTS_MS_TO_SLOTS (int) ;
 int INP_DONT_SACK_QUEUE ;
 int INP_MBUF_QUEUE_READY ;
 int PACE_PKT_OUTPUT ;
 int PACE_TMR_DELACK ;
 int PACE_TMR_KEEP ;
 int PACE_TMR_MASK ;
 int PACE_TMR_RACK ;
 scalar_t__ SEQ_GT (int ,int ) ;
 int SO_KEEPALIVE ;
 scalar_t__ TCPS_CLOSED ;
 scalar_t__ TCPS_CLOSING ;
 scalar_t__ TCPS_HAVEESTABLISHED (scalar_t__) ;
 scalar_t__ TCPS_LISTEN ;
 int TF_DELACK ;
 int TICKS_2_MSEC (int ) ;
 int TP_KEEPIDLE (struct tcpcb*) ;
 int TP_KEEPINIT (struct tcpcb*) ;
 scalar_t__ TSTMP_GT (int,int) ;
 int USEC_TO_MSEC (int ) ;
 int panic (char*,struct tcpcb*,struct tcp_rack*,int,int,int,int) ;
 int rack_log_to_start (struct tcp_rack*,int,int,int,int) ;
 int rack_log_type_bbrsnd (struct tcp_rack*,int,int,int) ;
 int rack_timer_start (struct tcpcb*,struct tcp_rack*,int,int) ;
 scalar_t__ tcp_always_keepalive ;
 int tcp_delacktime ;
 int tcp_hpts_insert (struct inpcb*,int ) ;
 int tcp_sad_pacing_interval ;

__attribute__((used)) static void
rack_start_hpts_timer(struct tcp_rack *rack, struct tcpcb *tp, uint32_t cts,
      int32_t slot, uint32_t tot_len_this_send, int sup_rack)
{
 struct inpcb *inp;
 uint32_t delayed_ack = 0;
 uint32_t hpts_timeout;
 uint8_t stopped;
 uint32_t left = 0;

 inp = tp->t_inpcb;
 if (inp->inp_in_hpts) {

  return;
 }
 if ((tp->t_state == TCPS_CLOSED) ||
     (tp->t_state == TCPS_LISTEN)) {
  return;
 }
 stopped = rack->rc_tmr_stopped;
 if (stopped && TSTMP_GT(rack->r_ctl.rc_timer_exp, cts)) {
  left = rack->r_ctl.rc_timer_exp - cts;
 }
 rack->tlp_timer_up = 0;
 rack->r_ctl.rc_timer_exp = 0;
 if (rack->rc_inp->inp_in_hpts == 0) {
  rack->r_ctl.rc_hpts_flags = 0;
 }
 if (slot) {

  rack->r_ctl.rc_hpts_flags |= PACE_PKT_OUTPUT;
 } else if (rack->r_ctl.rc_hpts_flags & PACE_PKT_OUTPUT) {




  if (TSTMP_GT(rack->r_ctl.rc_last_output_to, cts))
   slot = rack->r_ctl.rc_last_output_to - cts;
  else
   slot = 1;
 }
 hpts_timeout = rack_timer_start(tp, rack, cts, sup_rack);
 if (rack->sack_attack_disable &&
     (slot < USEC_TO_MSEC(tcp_sad_pacing_interval))) {
  slot = USEC_TO_MSEC(tcp_sad_pacing_interval);
 }
 if (tp->t_flags & TF_DELACK) {
  delayed_ack = TICKS_2_MSEC(tcp_delacktime);
  rack->r_ctl.rc_hpts_flags |= PACE_TMR_DELACK;
 }
 if (delayed_ack && ((hpts_timeout == 0) ||
       (delayed_ack < hpts_timeout)))
  hpts_timeout = delayed_ack;
 else
  rack->r_ctl.rc_hpts_flags &= ~PACE_TMR_DELACK;




 if ((hpts_timeout == 0) &&
     (slot == 0)) {
  if ((tcp_always_keepalive || inp->inp_socket->so_options & SO_KEEPALIVE) &&
      (tp->t_state <= TCPS_CLOSING)) {





   if (TCPS_HAVEESTABLISHED(tp->t_state)) {

    hpts_timeout = TP_KEEPIDLE(tp);
   } else {

    hpts_timeout = TP_KEEPINIT(tp);
   }
   rack->r_ctl.rc_hpts_flags |= PACE_TMR_KEEP;
  }
 }
 if (left && (stopped & (PACE_TMR_KEEP | PACE_TMR_DELACK)) ==
     (rack->r_ctl.rc_hpts_flags & PACE_TMR_MASK)) {
  if (left < hpts_timeout)
   hpts_timeout = left;
 }
 if (hpts_timeout) {





  if (hpts_timeout > 0x7ffffffe)
   hpts_timeout = 0x7ffffffe;
  rack->r_ctl.rc_timer_exp = cts + hpts_timeout;
 }
 if (slot) {
  rack->rc_inp->inp_flags2 |= INP_MBUF_QUEUE_READY;
  if (rack->r_ctl.rc_hpts_flags & PACE_TMR_RACK)
   inp->inp_flags2 |= INP_DONT_SACK_QUEUE;
  else
   inp->inp_flags2 &= ~INP_DONT_SACK_QUEUE;
  rack->r_ctl.rc_last_output_to = cts + slot;
  if ((hpts_timeout == 0) || (hpts_timeout > slot)) {
   if (rack->rc_inp->inp_in_hpts == 0)
    tcp_hpts_insert(tp->t_inpcb, HPTS_MS_TO_SLOTS(slot));
   rack_log_to_start(rack, cts, hpts_timeout, slot, 1);
  } else {




   if (rack->rc_inp->inp_in_hpts == 0)
    tcp_hpts_insert(tp->t_inpcb, HPTS_MS_TO_SLOTS(hpts_timeout));
   rack_log_to_start(rack, cts, hpts_timeout, slot, 0);
  }
 } else if (hpts_timeout) {
  if (rack->r_ctl.rc_hpts_flags & PACE_TMR_RACK) {

   rack->rc_inp->inp_flags2 |= INP_MBUF_QUEUE_READY;
   inp->inp_flags2 |= INP_DONT_SACK_QUEUE;
  } else {

   rack->rc_inp->inp_flags2 &= ~INP_MBUF_QUEUE_READY;
   inp->inp_flags2 &= ~INP_DONT_SACK_QUEUE;
  }
  if (rack->rc_inp->inp_in_hpts == 0)
   tcp_hpts_insert(tp->t_inpcb, HPTS_MS_TO_SLOTS(hpts_timeout));
  rack_log_to_start(rack, cts, hpts_timeout, slot, 0);
 } else {







 }
 rack->rc_tmr_stopped = 0;
 if (slot)
  rack_log_type_bbrsnd(rack, tot_len_this_send, slot, cts);
}
