
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct socket {int dummy; } ;
struct TYPE_4__ {int refcnt; } ;
struct sctp_tcb {int sctp_ep; TYPE_2__ asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_error_cause {int code; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_3__ {int chunk_flags; int chunk_length; } ;
struct sctp_abort_chunk {TYPE_1__ ch; } ;


 int SCTPDBG (int ,char*,...) ;
 int SCTP_ADD_SUBSTATE (struct sctp_tcb*,int ) ;
 int SCTP_CAUSE_NAT_COLLIDING_STATE ;
 int SCTP_CAUSE_NAT_MISSING_STATE ;
 int SCTP_DEBUG_INPUT2 ;
 scalar_t__ SCTP_FROM_SCTP_INPUT ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 struct socket* SCTP_INP_SO (int ) ;
 scalar_t__ SCTP_LOC_7 ;
 scalar_t__ SCTP_LOC_8 ;
 int SCTP_NORMAL_PROC ;
 int SCTP_SOCKET_LOCK (struct socket*,int) ;
 int SCTP_SOCKET_UNLOCK (struct socket*,int) ;
 int SCTP_SO_NOT_LOCKED ;
 scalar_t__ SCTP_STATE_OPEN ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 int SCTP_STATE_WAS_ABORTED ;
 int SCTP_STAT_DECR_GAUGE32 (int ) ;
 int SCTP_STAT_INCR_COUNTER32 (int ) ;
 int SCTP_TCB_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int SCTP_TIMER_TYPE_RECV ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int ntohs (int ) ;
 int sctp_abort_notification (struct sctp_tcb*,int,int,struct sctp_abort_chunk*,int ) ;
 int sctp_free_assoc (int ,struct sctp_tcb*,int ,scalar_t__) ;
 scalar_t__ sctp_handle_nat_colliding_state (struct sctp_tcb*) ;
 scalar_t__ sctp_handle_nat_missing_state (struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_print_out_track_log (struct sctp_tcb*) ;
 int sctp_timer_stop (int ,int ,struct sctp_tcb*,struct sctp_nets*,scalar_t__) ;
 int sctps_aborted ;
 int sctps_currestab ;

__attribute__((used)) static int
sctp_handle_abort(struct sctp_abort_chunk *abort,
    struct sctp_tcb *stcb, struct sctp_nets *net)
{



 uint16_t len;
 uint16_t error;

 SCTPDBG(SCTP_DEBUG_INPUT2, "sctp_handle_abort: handling ABORT\n");
 if (stcb == ((void*)0))
  return (0);

 len = ntohs(abort->ch.chunk_length);
 if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_error_cause)) {




  struct sctp_error_cause *cause;

  cause = (struct sctp_error_cause *)(abort + 1);
  error = ntohs(cause->code);
  if (error == SCTP_CAUSE_NAT_COLLIDING_STATE) {
   SCTPDBG(SCTP_DEBUG_INPUT2, "Received Colliding state abort flags:%x\n",
       abort->ch.chunk_flags);
   if (sctp_handle_nat_colliding_state(stcb)) {
    return (0);
   }
  } else if (error == SCTP_CAUSE_NAT_MISSING_STATE) {
   SCTPDBG(SCTP_DEBUG_INPUT2, "Received missing state abort flags:%x\n",
       abort->ch.chunk_flags);
   if (sctp_handle_nat_missing_state(stcb, net)) {
    return (0);
   }
  }
 } else {
  error = 0;
 }

 sctp_timer_stop(SCTP_TIMER_TYPE_RECV, stcb->sctp_ep, stcb, net,
     SCTP_FROM_SCTP_INPUT + SCTP_LOC_7);

 sctp_abort_notification(stcb, 1, error, abort, SCTP_SO_NOT_LOCKED);

 SCTP_STAT_INCR_COUNTER32(sctps_aborted);
 if ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
     (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
  SCTP_STAT_DECR_GAUGE32(sctps_currestab);
 }
 SCTP_ADD_SUBSTATE(stcb, SCTP_STATE_WAS_ABORTED);
 (void)sctp_free_assoc(stcb->sctp_ep, stcb, SCTP_NORMAL_PROC,
     SCTP_FROM_SCTP_INPUT + SCTP_LOC_8);



 SCTPDBG(SCTP_DEBUG_INPUT2, "sctp_handle_abort: finished\n");
 return (1);
}
