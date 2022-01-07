
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_6__ {int delayed_connection; int time_entered; int primary_destination; } ;
struct sctp_tcb {TYPE_3__ asoc; TYPE_2__* sctp_ep; } ;
struct TYPE_4__ {int port; int pre_open_stream_count; } ;
struct sctp_inpcb {int sctp_flags; TYPE_1__ sctp_ep; int def_vrf_id; int sctp_asoc_list; } ;
typedef int sctp_assoc_t ;
typedef int caddr_t ;
struct TYPE_5__ {int sctp_flags; } ;




 int EADDRINUSE ;
 int EALREADY ;
 int EFAULT ;
 int EINVAL ;
 struct sctp_tcb* LIST_FIRST (int *) ;
 int SCTPDBG (int ,char*) ;
 int SCTP_ASOC_CREATE_LOCK (struct sctp_inpcb*) ;
 int SCTP_ASOC_CREATE_UNLOCK (struct sctp_inpcb*) ;
 int SCTP_DEBUG_PCB1 ;
 int SCTP_FROM_SCTP_USRREQ ;
 int SCTP_GETTIME_TIMEVAL (int *) ;
 int SCTP_INITIALIZE_AUTH_PARAMS ;
 int SCTP_INP_DECR_REF (struct sctp_inpcb*) ;
 int SCTP_INP_INCR_REF (struct sctp_inpcb*) ;
 int SCTP_INP_RLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_RUNLOCK (struct sctp_inpcb*) ;
 scalar_t__ SCTP_IPV6_V6ONLY (struct sctp_inpcb*) ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,struct sctp_tcb*,int *,int ,int) ;
 int SCTP_PCB_FLAGS_BOUND_V6 ;
 int SCTP_PCB_FLAGS_CONNECTED ;
 int SCTP_PCB_FLAGS_IN_TCPPOOL ;
 int SCTP_PCB_FLAGS_PORTREUSE ;
 int SCTP_PCB_FLAGS_SOCKET_ALLGONE ;
 int SCTP_PCB_FLAGS_SOCKET_GONE ;
 int SCTP_PCB_FLAGS_TCPTYPE ;
 int SCTP_PCB_FLAGS_UNBOUND ;
 int SCTP_SET_STATE (struct sctp_tcb*,int ) ;
 int SCTP_SO_LOCKED ;
 int SCTP_STATE_COOKIE_WAIT ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int SCTP_TIMER_TYPE_INIT ;
 struct sctp_tcb* sctp_aloc_assoc (struct sctp_inpcb*,struct sockaddr*,int*,int ,int ,int ,int ,struct thread*,int ) ;
 int sctp_connectx_helper_add (struct sctp_tcb*,struct sockaddr*,unsigned int,int*) ;
 int sctp_connectx_helper_find (struct sctp_inpcb*,struct sockaddr*,unsigned int,unsigned int*,unsigned int*,unsigned int) ;
 int sctp_get_associd (struct sctp_tcb*) ;
 int sctp_inpcb_bind (struct socket*,int *,int *,void*) ;
 scalar_t__ sctp_is_feature_off (struct sctp_inpcb*,int ) ;
 int sctp_send_initiate (struct sctp_inpcb*,struct sctp_tcb*,int ) ;
 int sctp_timer_start (int ,struct sctp_inpcb*,struct sctp_tcb*,int ) ;
 int soisconnecting (struct socket*) ;

__attribute__((used)) static int
sctp_do_connect_x(struct socket *so, struct sctp_inpcb *inp, void *optval,
    size_t optsize, void *p, int delay)
{
 int error;
 int creat_lock_on = 0;
 struct sctp_tcb *stcb = ((void*)0);
 struct sockaddr *sa;
 unsigned int num_v6 = 0, num_v4 = 0, *totaddrp, totaddr;
 uint32_t vrf_id;
 sctp_assoc_t *a_id;

 SCTPDBG(SCTP_DEBUG_PCB1, "Connectx called\n");

 if ((inp->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) &&
     (inp->sctp_flags & SCTP_PCB_FLAGS_CONNECTED)) {

  SCTP_LTRACE_ERR_RET(inp, stcb, ((void*)0), SCTP_FROM_SCTP_USRREQ, EADDRINUSE);
  return (EADDRINUSE);
 }

 if ((inp->sctp_flags & SCTP_PCB_FLAGS_IN_TCPPOOL) &&
     (sctp_is_feature_off(inp, SCTP_PCB_FLAGS_PORTREUSE))) {
  SCTP_LTRACE_ERR_RET(inp, stcb, ((void*)0), SCTP_FROM_SCTP_USRREQ, EINVAL);
  return (EINVAL);
 }

 if (inp->sctp_flags & SCTP_PCB_FLAGS_CONNECTED) {
  SCTP_INP_RLOCK(inp);
  stcb = LIST_FIRST(&inp->sctp_asoc_list);
  SCTP_INP_RUNLOCK(inp);
 }
 if (stcb) {
  SCTP_LTRACE_ERR_RET(inp, stcb, ((void*)0), SCTP_FROM_SCTP_USRREQ, EALREADY);
  return (EALREADY);
 }
 SCTP_INP_INCR_REF(inp);
 SCTP_ASOC_CREATE_LOCK(inp);
 creat_lock_on = 1;
 if ((inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_ALLGONE) ||
     (inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_GONE)) {
  SCTP_LTRACE_ERR_RET(inp, stcb, ((void*)0), SCTP_FROM_SCTP_USRREQ, EFAULT);
  error = EFAULT;
  goto out_now;
 }
 totaddrp = (unsigned int *)optval;
 totaddr = *totaddrp;
 sa = (struct sockaddr *)(totaddrp + 1);
 error = sctp_connectx_helper_find(inp, sa, totaddr, &num_v4, &num_v6, (unsigned int)(optsize - sizeof(int)));
 if (error != 0) {

  SCTP_ASOC_CREATE_UNLOCK(inp);
  creat_lock_on = 0;
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_USRREQ, error);
  goto out_now;
 }
 if ((inp->sctp_flags & SCTP_PCB_FLAGS_UNBOUND) ==
     SCTP_PCB_FLAGS_UNBOUND) {

  error = sctp_inpcb_bind(so, ((void*)0), ((void*)0), p);
  if (error) {
   goto out_now;
  }
 }


 vrf_id = inp->def_vrf_id;



 stcb = sctp_aloc_assoc(inp, sa, &error, 0, vrf_id,
     inp->sctp_ep.pre_open_stream_count,
     inp->sctp_ep.port,
     (struct thread *)p,
     SCTP_INITIALIZE_AUTH_PARAMS);
 if (stcb == ((void*)0)) {

  goto out_now;
 }
 if (stcb->sctp_ep->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) {
  stcb->sctp_ep->sctp_flags |= SCTP_PCB_FLAGS_CONNECTED;

  soisconnecting(so);
 }
 SCTP_SET_STATE(stcb, SCTP_STATE_COOKIE_WAIT);

 switch (sa->sa_family) {
 default:
  break;
 }

 error = 0;
 sctp_connectx_helper_add(stcb, sa, (totaddr - 1), &error);

 if (error) {
  goto out_now;
 }
 a_id = (sctp_assoc_t *)optval;
 *a_id = sctp_get_associd(stcb);

 if (delay) {

  stcb->asoc.delayed_connection = 1;
  sctp_timer_start(SCTP_TIMER_TYPE_INIT, inp, stcb, stcb->asoc.primary_destination);
 } else {
  (void)SCTP_GETTIME_TIMEVAL(&stcb->asoc.time_entered);
  sctp_send_initiate(inp, stcb, SCTP_SO_LOCKED);
 }
 SCTP_TCB_UNLOCK(stcb);
out_now:
 if (creat_lock_on) {
  SCTP_ASOC_CREATE_UNLOCK(inp);
 }
 SCTP_INP_DECR_REF(inp);
 return (error);
}
