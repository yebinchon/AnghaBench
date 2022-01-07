
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tcb {int dummy; } ;
struct sctp_inpcb {int dummy; } ;
typedef int sctp_assoc_t ;


 int SCTP_INP_RLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_RUNLOCK (struct sctp_inpcb*) ;
 struct sctp_tcb* sctp_findasoc_ep_asocid_locked (struct sctp_inpcb*,int ,int) ;

struct sctp_tcb *
sctp_findassociation_ep_asocid(struct sctp_inpcb *inp, sctp_assoc_t asoc_id, int want_lock)
{
 struct sctp_tcb *stcb;

 SCTP_INP_RLOCK(inp);
 stcb = sctp_findasoc_ep_asocid_locked(inp, asoc_id, want_lock);
 SCTP_INP_RUNLOCK(inp);
 return (stcb);
}
