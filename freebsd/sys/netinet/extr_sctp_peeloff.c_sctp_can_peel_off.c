
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct socket {scalar_t__ so_pcb; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_inpcb {int sctp_flags; } ;
typedef int sctp_assoc_t ;


 int EBADF ;
 int EFAULT ;
 int ENOENT ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int SCTP_FROM_SCTP_PEELOFF ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,struct sctp_tcb*,int *,int ,int) ;
 int SCTP_PCB_FLAGS_IN_TCPPOOL ;
 int SCTP_PCB_FLAGS_TCPTYPE ;
 scalar_t__ SCTP_STATE_EMPTY ;
 scalar_t__ SCTP_STATE_INUSE ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 struct sctp_tcb* sctp_findassociation_ep_asocid (struct sctp_inpcb*,int ,int) ;

int
sctp_can_peel_off(struct socket *head, sctp_assoc_t assoc_id)
{
 struct sctp_inpcb *inp;
 struct sctp_tcb *stcb;
 uint32_t state;

 if (head == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(((void*)0), ((void*)0), ((void*)0), SCTP_FROM_SCTP_PEELOFF, EBADF);
  return (EBADF);
 }
 inp = (struct sctp_inpcb *)head->so_pcb;
 if (inp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(((void*)0), ((void*)0), ((void*)0), SCTP_FROM_SCTP_PEELOFF, EFAULT);
  return (EFAULT);
 }
 if ((inp->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) ||
     (inp->sctp_flags & SCTP_PCB_FLAGS_IN_TCPPOOL)) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_PEELOFF, EOPNOTSUPP);
  return (EOPNOTSUPP);
 }
 stcb = sctp_findassociation_ep_asocid(inp, assoc_id, 1);
 if (stcb == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(inp, stcb, ((void*)0), SCTP_FROM_SCTP_PEELOFF, ENOENT);
  return (ENOENT);
 }
 state = SCTP_GET_STATE(stcb);
 if ((state == SCTP_STATE_EMPTY) ||
     (state == SCTP_STATE_INUSE)) {
  SCTP_TCB_UNLOCK(stcb);
  SCTP_LTRACE_ERR_RET(inp, stcb, ((void*)0), SCTP_FROM_SCTP_PEELOFF, ENOTCONN);
  return (ENOTCONN);
 }
 SCTP_TCB_UNLOCK(stcb);

 return (0);
}
