
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr {int dummy; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int dummy; } ;


 int SCTP_INP_INFO_RLOCK () ;
 int SCTP_INP_INFO_RUNLOCK () ;
 struct sctp_tcb* sctp_findassociation_ep_addr (struct sctp_inpcb**,struct sockaddr*,struct sctp_nets**,struct sockaddr*,int *) ;
 struct sctp_inpcb* sctp_pcb_findep (struct sockaddr*,int ,int,int ) ;
 struct sctp_tcb* sctp_tcb_special_locate (struct sctp_inpcb**,struct sockaddr*,struct sockaddr*,struct sctp_nets**,int ) ;

struct sctp_tcb *
sctp_findassociation_addr_sa(struct sockaddr *from, struct sockaddr *to,
    struct sctp_inpcb **inp_p, struct sctp_nets **netp, int find_tcp_pool,
    uint32_t vrf_id)
{
 struct sctp_inpcb *inp = ((void*)0);
 struct sctp_tcb *stcb;

 SCTP_INP_INFO_RLOCK();
 if (find_tcp_pool) {
  if (inp_p != ((void*)0)) {
   stcb = sctp_tcb_special_locate(inp_p, from, to, netp,
       vrf_id);
  } else {
   stcb = sctp_tcb_special_locate(&inp, from, to, netp,
       vrf_id);
  }
  if (stcb != ((void*)0)) {
   SCTP_INP_INFO_RUNLOCK();
   return (stcb);
  }
 }
 inp = sctp_pcb_findep(to, 0, 1, vrf_id);
 if (inp_p != ((void*)0)) {
  *inp_p = inp;
 }
 SCTP_INP_INFO_RUNLOCK();
 if (inp == ((void*)0)) {
  return (((void*)0));
 }






 if (inp_p != ((void*)0)) {
  stcb = sctp_findassociation_ep_addr(inp_p, from, netp, to,
      ((void*)0));
 } else {
  stcb = sctp_findassociation_ep_addr(&inp, from, netp, to,
      ((void*)0));
 }
 return (stcb);
}
