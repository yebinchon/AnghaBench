
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct vnet {int dummy; } ;
struct timeval {int tv_sec; } ;
struct socket {int dummy; } ;
struct sctp_tmit_chunk {struct sctp_nets* whoTo; } ;
struct sctp_timer {int type; void* self; int stopped_from; int timer; scalar_t__ vnet; scalar_t__ net; scalar_t__ tcb; scalar_t__ ep; } ;
struct TYPE_4__ {scalar_t__ state; int refcnt; int timoshutdownack; int timocookie; int timoheartbeat; int timoshutdown; int timosack; int timoinit; int sent_queue; int sent_queue_cnt; int num_send_timers_up; int timodata; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_nets {int dest_state; } ;
struct TYPE_3__ {int ** secret_key; scalar_t__ current_secret_number; scalar_t__ last_secret_number; int time_of_secret_change; } ;
struct sctp_inpcb {TYPE_1__ sctp_ep; int * sctp_socket; } ;
struct mbuf {int dummy; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (struct vnet*) ;
 int SCTPDBG (int ,char*,int) ;
 int SCTP_ADDR_NOHB ;
 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CALLED_FROM_INPKILL_TIMER ;
 int SCTP_DEBUG_TIMER1 ;
 int SCTP_FREE_SHOULD_USE_ABORT ;
 scalar_t__ SCTP_FROM_SCTPUTIL ;
 int SCTP_GETTIME_TIMEVAL (struct timeval*) ;
 scalar_t__ SCTP_HOW_MANY_SECRETS ;
 int SCTP_INP_DECR_REF (struct sctp_inpcb*) ;
 int SCTP_INP_INCR_REF (struct sctp_inpcb*) ;
 struct socket* SCTP_INP_SO (struct sctp_inpcb*) ;
 int SCTP_INP_WLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_WUNLOCK (struct sctp_inpcb*) ;
 int SCTP_IS_TIMER_TYPE_VALID (int) ;
 scalar_t__ SCTP_LOC_1 ;
 scalar_t__ SCTP_LOC_2 ;
 scalar_t__ SCTP_LOC_3 ;
 int SCTP_NORMAL_PROC ;
 int SCTP_NUMBER_OF_SECRETS ;
 int SCTP_OS_TIMER_ACTIVE (int *) ;
 int SCTP_OS_TIMER_DEACTIVATE (int *) ;
 scalar_t__ SCTP_OS_TIMER_PENDING (int *) ;
 int SCTP_OUTPUT_FROM_ASCONF_TMR ;
 int SCTP_OUTPUT_FROM_AUTOCLOSE_TMR ;
 int SCTP_OUTPUT_FROM_HB_TMR ;
 int SCTP_OUTPUT_FROM_SACK_TMR ;
 int SCTP_OUTPUT_FROM_SHUT_ACK_TMR ;
 int SCTP_OUTPUT_FROM_SHUT_TMR ;
 int SCTP_OUTPUT_FROM_STRRST_TMR ;
 int SCTP_OUTPUT_FROM_T3 ;
 int SCTP_SOCKET_LOCK (struct socket*,int) ;
 int SCTP_SOCKET_UNLOCK (struct socket*,int) ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_STATE_ABOUT_TO_BE_FREED ;
 int SCTP_STAT_INCR (int ) ;
 int SCTP_TCB_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_LOCK_ASSERT (struct sctp_tcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int SCTP_WQ_ADDR_LOCK () ;
 int SCTP_WQ_ADDR_UNLOCK () ;
 struct sctp_tmit_chunk* TAILQ_FIRST (int *) ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int sctp_abort_an_association (struct sctp_inpcb*,struct sctp_tcb*,struct mbuf*,int ) ;
 int sctp_asconf_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_audit_log (int,int ) ;
 int sctp_auditing (int,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_autoclose_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_chunk_output (struct sctp_inpcb*,struct sctp_tcb*,int ,int ) ;
 int sctp_cookie_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_delete_prim_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_diag_info_code ;
 int sctp_fix_ecn_echo (TYPE_2__*) ;
 int sctp_free_assoc (struct sctp_inpcb*,struct sctp_tcb*,int ,scalar_t__) ;
 struct mbuf* sctp_generate_cause (int ,char*) ;
 int sctp_handle_addr_wq () ;
 int sctp_heartbeat_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_inpcb_free (struct sctp_inpcb*,int ,int ) ;
 int sctp_pathmtu_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_select_initial_TSN (TYPE_1__*) ;
 int sctp_send_sack (struct sctp_tcb*,int ) ;
 int sctp_shutdown_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_shutdownack_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_strreset_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_t1init_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_t3rxt_timer (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_timer_start (int const,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_timer_stop (int const,struct sctp_inpcb*,struct sctp_tcb*,int *,scalar_t__) ;
 int sctps_timoasconf ;
 int sctps_timoassockill ;
 int sctps_timoautoclose ;
 int sctps_timocookie ;
 int sctps_timodata ;
 int sctps_timodelprim ;
 int sctps_timoheartbeat ;
 int sctps_timoinit ;
 int sctps_timoinpkill ;
 int sctps_timopathmtu ;
 int sctps_timosack ;
 int sctps_timosecret ;
 int sctps_timoshutdown ;
 int sctps_timoshutdownack ;
 int sctps_timoshutdownguard ;
 int sctps_timostrmrst ;

void
sctp_timeout_handler(void *t)
{
 struct sctp_inpcb *inp;
 struct sctp_tcb *stcb;
 struct sctp_nets *net;
 struct sctp_timer *tmr;
 struct mbuf *op_err;



 int did_output;
 int type;

 tmr = (struct sctp_timer *)t;
 inp = (struct sctp_inpcb *)tmr->ep;
 stcb = (struct sctp_tcb *)tmr->tcb;
 net = (struct sctp_nets *)tmr->net;
 CURVNET_SET((struct vnet *)tmr->vnet);
 did_output = 1;







 if (tmr->self != (void *)tmr) {




  CURVNET_RESTORE();
  return;
 }
 tmr->stopped_from = 0xa001;
 if (!SCTP_IS_TIMER_TYPE_VALID(tmr->type)) {




  CURVNET_RESTORE();
  return;
 }
 tmr->stopped_from = 0xa002;
 if ((tmr->type != 144) && (inp == ((void*)0))) {
  CURVNET_RESTORE();
  return;
 }

 tmr->stopped_from = 0xa003;
 if (inp) {
  SCTP_INP_INCR_REF(inp);
  if ((inp->sctp_socket == ((void*)0)) &&
      ((tmr->type != 137) &&
      (tmr->type != 138) &&
      (tmr->type != 132) &&
      (tmr->type != 133) &&
      (tmr->type != 139) &&
      (tmr->type != 131) &&
      (tmr->type != 130) &&
      (tmr->type != 129) &&
      (tmr->type != 142))) {
   SCTP_INP_DECR_REF(inp);
   CURVNET_RESTORE();
   return;
  }
 }
 tmr->stopped_from = 0xa004;
 if (stcb) {
  atomic_add_int(&stcb->asoc.refcnt, 1);
  if (stcb->asoc.state == 0) {
   atomic_add_int(&stcb->asoc.refcnt, -1);
   if (inp) {
    SCTP_INP_DECR_REF(inp);
   }
   CURVNET_RESTORE();
   return;
  }
 }
 type = tmr->type;
 tmr->stopped_from = 0xa005;
 SCTPDBG(SCTP_DEBUG_TIMER1, "Timer type %d goes off\n", type);
 if (!SCTP_OS_TIMER_ACTIVE(&tmr->timer)) {
  if (inp) {
   SCTP_INP_DECR_REF(inp);
  }
  if (stcb) {
   atomic_add_int(&stcb->asoc.refcnt, -1);
  }
  CURVNET_RESTORE();
  return;
 }
 tmr->stopped_from = 0xa006;

 if (stcb) {
  SCTP_TCB_LOCK(stcb);
  atomic_add_int(&stcb->asoc.refcnt, -1);
  if ((type != 142) &&
      ((stcb->asoc.state == 0) ||
      (stcb->asoc.state & SCTP_STATE_ABOUT_TO_BE_FREED))) {
   SCTP_TCB_UNLOCK(stcb);
   if (inp) {
    SCTP_INP_DECR_REF(inp);
   }
   CURVNET_RESTORE();
   return;
  }
 } else if (inp != ((void*)0)) {
  if (type != 137) {
   SCTP_INP_WLOCK(inp);
  }
 } else {
  SCTP_WQ_ADDR_LOCK();
 }

 tmr->stopped_from = type;


 if (SCTP_OS_TIMER_PENDING(&tmr->timer)) {



  goto get_out;
 }
 if (!SCTP_OS_TIMER_ACTIVE(&tmr->timer)) {



  goto get_out;
 }
 SCTP_OS_TIMER_DEACTIVATE(&tmr->timer);


 switch (type) {
 case 144:
  sctp_handle_addr_wq();
  break;
 case 132:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timodata);
  stcb->asoc.timodata++;
  stcb->asoc.num_send_timers_up--;
  if (stcb->asoc.num_send_timers_up < 0) {
   stcb->asoc.num_send_timers_up = 0;
  }
  SCTP_TCB_LOCK_ASSERT(stcb);
  if (sctp_t3rxt_timer(inp, stcb, net)) {


   goto out_decr;
  }
  SCTP_TCB_LOCK_ASSERT(stcb);



  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_NOT_LOCKED);
  if ((stcb->asoc.num_send_timers_up == 0) &&
      (stcb->asoc.sent_queue_cnt > 0)) {
   struct sctp_tmit_chunk *chk;







   chk = TAILQ_FIRST(&stcb->asoc.sent_queue);
   sctp_timer_start(132, inp, stcb,
       chk->whoTo);
  }
  break;
 case 138:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timoinit);
  stcb->asoc.timoinit++;
  if (sctp_t1init_timer(inp, stcb, net)) {

   goto out_decr;
  }

  did_output = 0;
  break;
 case 133:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timosack);
  stcb->asoc.timosack++;
  sctp_send_sack(stcb, SCTP_SO_NOT_LOCKED);



  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_SACK_TMR, SCTP_SO_NOT_LOCKED);
  break;
 case 131:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  if (sctp_shutdown_timer(inp, stcb, net)) {

   goto out_decr;
  }
  SCTP_STAT_INCR(sctps_timoshutdown);
  stcb->asoc.timoshutdown++;



  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_SHUT_TMR, SCTP_SO_NOT_LOCKED);
  break;
 case 139:
  if ((stcb == ((void*)0)) || (inp == ((void*)0)) || (net == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timoheartbeat);
  stcb->asoc.timoheartbeat++;
  if (sctp_heartbeat_timer(inp, stcb, net)) {

   goto out_decr;
  }



  if (!(net->dest_state & SCTP_ADDR_NOHB)) {
   sctp_timer_start(139, inp, stcb, net);
   sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_HB_TMR, SCTP_SO_NOT_LOCKED);
  }
  break;
 case 140:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }

  if (sctp_cookie_timer(inp, stcb, net)) {

   goto out_decr;
  }
  SCTP_STAT_INCR(sctps_timocookie);
  stcb->asoc.timocookie++;







  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_NOT_LOCKED);
  break;
 case 136:
  {
   struct timeval tv;
   int i, secret;

   if (inp == ((void*)0)) {
    break;
   }
   SCTP_STAT_INCR(sctps_timosecret);
   (void)SCTP_GETTIME_TIMEVAL(&tv);
   inp->sctp_ep.time_of_secret_change = tv.tv_sec;
   inp->sctp_ep.last_secret_number =
       inp->sctp_ep.current_secret_number;
   inp->sctp_ep.current_secret_number++;
   if (inp->sctp_ep.current_secret_number >=
       SCTP_HOW_MANY_SECRETS) {
    inp->sctp_ep.current_secret_number = 0;
   }
   secret = (int)inp->sctp_ep.current_secret_number;
   for (i = 0; i < SCTP_NUMBER_OF_SECRETS; i++) {
    inp->sctp_ep.secret_key[secret][i] =
        sctp_select_initial_TSN(&inp->sctp_ep);
   }
   sctp_timer_start(136, inp, stcb, net);
  }
  did_output = 0;
  break;
 case 135:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timopathmtu);
  sctp_pathmtu_timer(inp, stcb, net);
  did_output = 0;
  break;
 case 130:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  if (sctp_shutdownack_timer(inp, stcb, net)) {

   goto out_decr;
  }
  SCTP_STAT_INCR(sctps_timoshutdownack);
  stcb->asoc.timoshutdownack++;



  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_SHUT_ACK_TMR, SCTP_SO_NOT_LOCKED);
  break;
 case 129:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timoshutdownguard);
  op_err = sctp_generate_cause(SCTP_BASE_SYSCTL(sctp_diag_info_code),
      "Shutdown guard timer expired");
  sctp_abort_an_association(inp, stcb, op_err, SCTP_SO_NOT_LOCKED);

  goto out_decr;

 case 128:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  if (sctp_strreset_timer(inp, stcb, net)) {

   goto out_decr;
  }
  SCTP_STAT_INCR(sctps_timostrmrst);
  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_STRRST_TMR, SCTP_SO_NOT_LOCKED);
  break;
 case 143:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  if (sctp_asconf_timer(inp, stcb, net)) {

   goto out_decr;
  }
  SCTP_STAT_INCR(sctps_timoasconf);



  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_ASCONF_TMR, SCTP_SO_NOT_LOCKED);
  break;
 case 134:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  sctp_delete_prim_timer(inp, stcb, net);
  SCTP_STAT_INCR(sctps_timodelprim);
  break;

 case 141:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timoautoclose);
  sctp_autoclose_timer(inp, stcb, net);
  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_AUTOCLOSE_TMR, SCTP_SO_NOT_LOCKED);
  did_output = 0;
  break;
 case 142:
  if ((stcb == ((void*)0)) || (inp == ((void*)0))) {
   break;
  }
  SCTP_STAT_INCR(sctps_timoassockill);

  SCTP_INP_DECR_REF(inp);
  sctp_timer_stop(142, inp, stcb, ((void*)0),
      SCTP_FROM_SCTPUTIL + SCTP_LOC_1);
  (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
      SCTP_FROM_SCTPUTIL + SCTP_LOC_2);







  stcb = ((void*)0);
  goto out_no_decr;
 case 137:
  SCTP_STAT_INCR(sctps_timoinpkill);
  if (inp == ((void*)0)) {
   break;
  }




  SCTP_INP_DECR_REF(inp);
  sctp_timer_stop(137, inp, ((void*)0), ((void*)0),
      SCTP_FROM_SCTPUTIL + SCTP_LOC_3);
  sctp_inpcb_free(inp, SCTP_FREE_SHOULD_USE_ABORT,
      SCTP_CALLED_FROM_INPKILL_TIMER);
  inp = ((void*)0);
  goto out_no_decr;
 default:
  SCTPDBG(SCTP_DEBUG_TIMER1, "sctp_timeout_handler:unknown timer %d\n",
      type);
  break;
 }





 if ((did_output) && stcb) {







  sctp_fix_ecn_echo(&stcb->asoc);
 }
get_out:
 if (stcb) {
  SCTP_TCB_UNLOCK(stcb);
 } else if (inp != ((void*)0)) {
  SCTP_INP_WUNLOCK(inp);
 } else {
  SCTP_WQ_ADDR_UNLOCK();
 }

out_decr:
 if (inp) {
  SCTP_INP_DECR_REF(inp);
 }

out_no_decr:
 SCTPDBG(SCTP_DEBUG_TIMER1, "Timer now complete (type = %d)\n", type);
 CURVNET_RESTORE();
}
