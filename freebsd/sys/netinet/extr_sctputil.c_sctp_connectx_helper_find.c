
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; unsigned int sa_len; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_inpcb {int dummy; } ;
typedef scalar_t__ caddr_t ;




 int EALREADY ;
 int EINVAL ;
 int IN6_IS_ADDR_V4MAPPED (int *) ;
 int SCTP_INP_DECR_REF (struct sctp_inpcb*) ;
 int SCTP_INP_INCR_REF (struct sctp_inpcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 struct sctp_tcb* sctp_findassociation_ep_addr (struct sctp_inpcb**,struct sockaddr*,int *,int *,int *) ;

int
sctp_connectx_helper_find(struct sctp_inpcb *inp, struct sockaddr *addr,
    unsigned int totaddr,
    unsigned int *num_v4, unsigned int *num_v6,
    unsigned int limit)
{
 struct sockaddr *sa;
 struct sctp_tcb *stcb;
 unsigned int incr, at, i;

 at = 0;
 sa = addr;
 *num_v6 = *num_v4 = 0;

 if (totaddr == 0) {
  return (EINVAL);
 }
 for (i = 0; i < totaddr; i++) {
  if (at + sizeof(struct sockaddr) > limit) {
   return (EINVAL);
  }
  switch (sa->sa_family) {
  default:
   return (EINVAL);
  }
  if ((at + incr) > limit) {
   return (EINVAL);
  }
  SCTP_INP_INCR_REF(inp);
  stcb = sctp_findassociation_ep_addr(&inp, sa, ((void*)0), ((void*)0), ((void*)0));
  if (stcb != ((void*)0)) {
   SCTP_TCB_UNLOCK(stcb);
   return (EALREADY);
  } else {
   SCTP_INP_DECR_REF(inp);
  }
  at += incr;
  sa = (struct sockaddr *)((caddr_t)sa + incr);
 }
 return (0);
}
