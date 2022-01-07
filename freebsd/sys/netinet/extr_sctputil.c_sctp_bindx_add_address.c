
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct socket {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct sctp_inpcb {int sctp_flags; scalar_t__ sctp_lport; } ;
typedef scalar_t__ sctp_assoc_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EADDRINUSE ;
 int EINVAL ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 int SCTP_ADD_IP_ADDRESS ;
 int SCTP_FROM_SCTPUTIL ;
 int SCTP_INP_DECR_REF (struct sctp_inpcb*) ;
 scalar_t__ SCTP_IPV6_V6ONLY (struct sctp_inpcb*) ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,int *,int *,int ,int) ;
 int SCTP_PCB_FLAGS_BOUNDALL ;
 int SCTP_PCB_FLAGS_BOUND_V6 ;
 int SCTP_PCB_FLAGS_UNBOUND ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 int sctp_addr_mgmt_ep_sa (struct sctp_inpcb*,struct sockaddr*,int ,int ,int *) ;
 int sctp_inpcb_bind (struct socket*,struct sockaddr*,int *,void*) ;
 struct sctp_inpcb* sctp_pcb_findep (struct sockaddr*,int,int ,int ) ;

void
sctp_bindx_add_address(struct socket *so, struct sctp_inpcb *inp,
    struct sockaddr *sa, sctp_assoc_t assoc_id,
    uint32_t vrf_id, int *error, void *p)
{
 struct sockaddr *addr_touse;





 if (inp->sctp_flags & SCTP_PCB_FLAGS_BOUNDALL) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTPUTIL, EINVAL);
  *error = EINVAL;
  return;
 }
 addr_touse = sa;
 if (inp->sctp_flags & SCTP_PCB_FLAGS_UNBOUND) {
  if (p == ((void*)0)) {

   SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTPUTIL, EINVAL);
   *error = EINVAL;
   return;
  }
  *error = sctp_inpcb_bind(so, addr_touse, ((void*)0), p);
  return;
 }





 if (assoc_id == 0) {

  struct sctp_inpcb *lep;
  struct sockaddr_in *lsin = (struct sockaddr_in *)addr_touse;


  if ((lsin->sin_port != 0) &&
      (lsin->sin_port != inp->sctp_lport)) {
   SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTPUTIL, EINVAL);
   *error = EINVAL;
   return;
  } else {

   lsin->sin_port = inp->sctp_lport;
  }

  lep = sctp_pcb_findep(addr_touse, 1, 0, vrf_id);
  if (lep != ((void*)0)) {





   SCTP_INP_DECR_REF(lep);
  }
  if (lep == inp) {

   return;
  } else if (lep == ((void*)0)) {
   ((struct sockaddr_in *)addr_touse)->sin_port = 0;
   *error = sctp_addr_mgmt_ep_sa(inp, addr_touse,
       SCTP_ADD_IP_ADDRESS,
       vrf_id, ((void*)0));
  } else {
   *error = EADDRINUSE;
  }
  if (*error)
   return;
 } else {



 }
}
