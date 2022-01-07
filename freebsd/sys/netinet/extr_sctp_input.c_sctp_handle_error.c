
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct socket {int dummy; } ;
struct sctp_association {int cookie_preserve_req; int refcnt; int max_init_times; int stale_cookie_count; } ;
struct sctp_tcb {int sctp_ep; struct sctp_association asoc; } ;
struct sctp_paramhdr {int param_type; } ;
struct sctp_nets {int dummy; } ;
struct TYPE_2__ {int chunk_type; } ;
struct sctp_error_unrecognized_chunk {TYPE_1__ ch; } ;
struct sctp_error_stale_cookie {int stale_time; } ;
struct sctp_error_cause {int length; int code; } ;
struct sctp_chunkhdr {int chunk_flags; int chunk_length; } ;
typedef scalar_t__ caddr_t ;


 int SCTPDBG (int ,char*,int,...) ;
 int SCTP_DEBUG_INPUT1 ;
 int SCTP_DEBUG_INPUT2 ;
 scalar_t__ SCTP_FROM_SCTP_INPUT ;
 int SCTP_GET_STATE (struct sctp_tcb*) ;
 struct socket* SCTP_INP_SO (int ) ;
 scalar_t__ SCTP_LOC_12 ;
 int SCTP_NORMAL_PROC ;
 int SCTP_NOTIFY_REMOTE_ERROR ;
 int SCTP_SET_STATE (struct sctp_tcb*,int ) ;
 int SCTP_SIZE32 (int) ;
 int SCTP_SOCKET_LOCK (struct socket*,int) ;
 int SCTP_SOCKET_UNLOCK (struct socket*,int) ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_STATE_COOKIE_ECHOED ;
 int SCTP_STATE_COOKIE_WAIT ;
 int SCTP_TCB_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int UINT32_MAX ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int sctp_abort_notification (struct sctp_tcb*,int ,int ,int *,int ) ;
 int sctp_free_assoc (int ,struct sctp_tcb*,int ,scalar_t__) ;
 int sctp_handle_nat_colliding_state (struct sctp_tcb*) ;
 int sctp_handle_nat_missing_state (struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_process_unrecog_chunk (struct sctp_tcb*,int ,struct sctp_nets*) ;
 int sctp_process_unrecog_param (struct sctp_tcb*,int) ;
 int sctp_send_initiate (int ,struct sctp_tcb*,int ) ;
 int sctp_stop_all_cookie_timers (struct sctp_tcb*) ;
 int sctp_toss_old_cookies (struct sctp_tcb*,struct sctp_association*) ;
 int sctp_ulp_notify (int ,struct sctp_tcb*,int,struct sctp_chunkhdr*,int ) ;

__attribute__((used)) static int
sctp_handle_error(struct sctp_chunkhdr *ch,
    struct sctp_tcb *stcb, struct sctp_nets *net, uint32_t limit)
{
 struct sctp_error_cause *cause;
 struct sctp_association *asoc;
 uint32_t remaining_length, adjust;
 uint16_t code, cause_code, cause_length;





 asoc = &stcb->asoc;
 cause = (struct sctp_error_cause *)((caddr_t)ch +
     sizeof(struct sctp_chunkhdr));
 remaining_length = ntohs(ch->chunk_length);
 if (remaining_length > limit) {
  remaining_length = limit;
 }
 if (remaining_length >= sizeof(struct sctp_chunkhdr)) {
  remaining_length -= sizeof(struct sctp_chunkhdr);
 } else {
  remaining_length = 0;
 }
 code = 0;
 while (remaining_length >= sizeof(struct sctp_error_cause)) {

  cause_code = ntohs(cause->code);
  cause_length = ntohs(cause->length);
  if ((cause_length > remaining_length) || (cause_length == 0)) {

   SCTPDBG(SCTP_DEBUG_INPUT1, "Bogus length in cause - bytes left: %u cause length: %u\n",
       remaining_length, cause_length);
   return (0);
  }
  if (code == 0) {

   code = cause_code;
  }
  switch (cause_code) {
  case 138:
  case 137:
  case 139:
  case 134:
   SCTPDBG(SCTP_DEBUG_INPUT1, "Software error we got a %u back? We have a bug :/ (or do they?)\n",
       cause_code);
   break;
  case 136:
   SCTPDBG(SCTP_DEBUG_INPUT2, "Received Colliding state abort flags: %x\n",
       ch->chunk_flags);
   if (sctp_handle_nat_colliding_state(stcb)) {
    return (0);
   }
   break;
  case 135:
   SCTPDBG(SCTP_DEBUG_INPUT2, "Received missing state abort flags: %x\n",
       ch->chunk_flags);
   if (sctp_handle_nat_missing_state(stcb, net)) {
    return (0);
   }
   break;
  case 131:




   if ((cause_length >= sizeof(struct sctp_error_stale_cookie)) &&
       (SCTP_GET_STATE(stcb) == SCTP_STATE_COOKIE_ECHOED)) {
    struct sctp_error_stale_cookie *stale_cookie;

    stale_cookie = (struct sctp_error_stale_cookie *)cause;
    asoc->cookie_preserve_req = ntohl(stale_cookie->stale_time);

    if (asoc->cookie_preserve_req <= UINT32_MAX / 2) {
     asoc->cookie_preserve_req *= 2;
    } else {
     asoc->cookie_preserve_req = UINT32_MAX;
    }
    asoc->stale_cookie_count++;
    if (asoc->stale_cookie_count >
        asoc->max_init_times) {
     sctp_abort_notification(stcb, 0, 0, ((void*)0), SCTP_SO_NOT_LOCKED);
     (void)sctp_free_assoc(stcb->sctp_ep, stcb, SCTP_NORMAL_PROC,
         SCTP_FROM_SCTP_INPUT + SCTP_LOC_12);



     return (-1);
    }

    sctp_toss_old_cookies(stcb, &stcb->asoc);
    SCTP_SET_STATE(stcb, SCTP_STATE_COOKIE_WAIT);
    sctp_stop_all_cookie_timers(stcb);
    sctp_send_initiate(stcb->sctp_ep, stcb, SCTP_SO_NOT_LOCKED);
   }
   break;
  case 128:
   break;
  case 130:
   if (cause_length >= sizeof(struct sctp_error_unrecognized_chunk)) {
    struct sctp_error_unrecognized_chunk *unrec_chunk;

    unrec_chunk = (struct sctp_error_unrecognized_chunk *)cause;
    sctp_process_unrecog_chunk(stcb, unrec_chunk->ch.chunk_type, net);
   }
   break;
  case 129:

   if (cause_length >= sizeof(struct sctp_error_cause) + sizeof(struct sctp_paramhdr)) {
    struct sctp_paramhdr *unrec_parameter;

    unrec_parameter = (struct sctp_paramhdr *)(cause + 1);
    sctp_process_unrecog_param(stcb, ntohs(unrec_parameter->param_type));
   }
   break;
  case 142:






   break;
  case 141:
  case 132:
  case 140:




   SCTPDBG(SCTP_DEBUG_INPUT2, "Peer sends ASCONF errors in a error cause with code %u.\n",
       cause_code);
   break;
  case 133:







   break;
  default:
   SCTPDBG(SCTP_DEBUG_INPUT1, "sctp_handle_error: unknown code 0x%x\n",
       cause_code);
   break;
  }
  adjust = SCTP_SIZE32(cause_length);
  if (remaining_length >= adjust) {
   remaining_length -= adjust;
  } else {
   remaining_length = 0;
  }
  cause = (struct sctp_error_cause *)((caddr_t)cause + adjust);
 }
 sctp_ulp_notify(SCTP_NOTIFY_REMOTE_ERROR, stcb, code, ch, SCTP_SO_NOT_LOCKED);
 return (0);
}
