
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct socket {scalar_t__ so_pcb; } ;
struct TYPE_4__ {int refcnt; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_3__ {int shared_keys; scalar_t__ local_auth_chunks; scalar_t__ local_hmacs; } ;
struct sctp_inpcb {int sctp_flags; TYPE_1__ sctp_ep; int * inp_starting_point_for_iterator; int local_strreset_support; int max_cwnd; int sctp_context; int partial_delivery_point; int pktdrop_supported; int nrsack_supported; int reconfig_supported; int asconf_supported; int auth_supported; int prsctp_supported; int ecn_supported; int sctp_cmt_on_off; int sctp_frag_point; int sctp_mobility_features; int sctp_features; struct socket* sctp_socket; } ;
typedef int sctp_assoc_t ;


 int EFAULT ;
 int ENOTCONN ;
 int SBL_WAIT ;
 int SCTP_FROM_SCTP_PEELOFF ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,int *,int *,int ,int) ;
 int SCTP_PCB_COPY_FLAGS ;
 int SCTP_PCB_FLAGS_CONNECTED ;
 int SCTP_PCB_FLAGS_IN_TCPPOOL ;
 int SCTP_PCB_FLAGS_UDPTYPE ;
 scalar_t__ SCTP_STATE_EMPTY ;
 scalar_t__ SCTP_STATE_INUSE ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 scalar_t__ sctp_copy_chunklist (scalar_t__) ;
 scalar_t__ sctp_copy_hmaclist (scalar_t__) ;
 int sctp_copy_skeylist (int *,int *) ;
 struct sctp_tcb* sctp_findassociation_ep_asocid (struct sctp_inpcb*,int ,int) ;
 int sctp_free_chunklist (scalar_t__) ;
 int sctp_free_hmaclist (scalar_t__) ;
 int sctp_move_pcb_and_assoc (struct sctp_inpcb*,struct sctp_inpcb*,struct sctp_tcb*) ;
 int sctp_pull_off_control_to_new_inp (struct sctp_inpcb*,struct sctp_inpcb*,struct sctp_tcb*,int ) ;

int
sctp_do_peeloff(struct socket *head, struct socket *so, sctp_assoc_t assoc_id)
{
 struct sctp_inpcb *inp, *n_inp;
 struct sctp_tcb *stcb;
 uint32_t state;

 inp = (struct sctp_inpcb *)head->so_pcb;
 if (inp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_PEELOFF, EFAULT);
  return (EFAULT);
 }
 stcb = sctp_findassociation_ep_asocid(inp, assoc_id, 1);
 if (stcb == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_PEELOFF, ENOTCONN);
  return (ENOTCONN);
 }

 state = SCTP_GET_STATE(stcb);
 if ((state == SCTP_STATE_EMPTY) ||
     (state == SCTP_STATE_INUSE)) {
  SCTP_TCB_UNLOCK(stcb);
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_PEELOFF, ENOTCONN);
  return (ENOTCONN);
 }

 n_inp = (struct sctp_inpcb *)so->so_pcb;
 n_inp->sctp_flags = (SCTP_PCB_FLAGS_UDPTYPE |
     SCTP_PCB_FLAGS_CONNECTED |
     SCTP_PCB_FLAGS_IN_TCPPOOL |
     (SCTP_PCB_COPY_FLAGS & inp->sctp_flags));
 n_inp->sctp_socket = so;
 n_inp->sctp_features = inp->sctp_features;
 n_inp->sctp_mobility_features = inp->sctp_mobility_features;
 n_inp->sctp_frag_point = inp->sctp_frag_point;
 n_inp->sctp_cmt_on_off = inp->sctp_cmt_on_off;
 n_inp->ecn_supported = inp->ecn_supported;
 n_inp->prsctp_supported = inp->prsctp_supported;
 n_inp->auth_supported = inp->auth_supported;
 n_inp->asconf_supported = inp->asconf_supported;
 n_inp->reconfig_supported = inp->reconfig_supported;
 n_inp->nrsack_supported = inp->nrsack_supported;
 n_inp->pktdrop_supported = inp->pktdrop_supported;
 n_inp->partial_delivery_point = inp->partial_delivery_point;
 n_inp->sctp_context = inp->sctp_context;
 n_inp->max_cwnd = inp->max_cwnd;
 n_inp->local_strreset_support = inp->local_strreset_support;
 n_inp->inp_starting_point_for_iterator = ((void*)0);

 if (n_inp->sctp_ep.local_hmacs)
  sctp_free_hmaclist(n_inp->sctp_ep.local_hmacs);
 n_inp->sctp_ep.local_hmacs =
     sctp_copy_hmaclist(inp->sctp_ep.local_hmacs);
 if (n_inp->sctp_ep.local_auth_chunks)
  sctp_free_chunklist(n_inp->sctp_ep.local_auth_chunks);
 n_inp->sctp_ep.local_auth_chunks =
     sctp_copy_chunklist(inp->sctp_ep.local_auth_chunks);
 (void)sctp_copy_skeylist(&inp->sctp_ep.shared_keys,
     &n_inp->sctp_ep.shared_keys);




 sctp_move_pcb_and_assoc(inp, n_inp, stcb);
 atomic_add_int(&stcb->asoc.refcnt, 1);
 SCTP_TCB_UNLOCK(stcb);

 sctp_pull_off_control_to_new_inp(inp, n_inp, stcb, SBL_WAIT);
 atomic_subtract_int(&stcb->asoc.refcnt, 1);

 return (0);
}
