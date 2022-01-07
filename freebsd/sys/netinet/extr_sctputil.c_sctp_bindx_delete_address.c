
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct sctp_inpcb {int sctp_flags; } ;
typedef scalar_t__ sctp_assoc_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 int SCTP_DEL_IP_ADDRESS ;
 int SCTP_FROM_SCTPUTIL ;
 scalar_t__ SCTP_IPV6_V6ONLY (struct sctp_inpcb*) ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,int *,int *,int ,int) ;
 int SCTP_PCB_FLAGS_BOUNDALL ;
 int SCTP_PCB_FLAGS_BOUND_V6 ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 int sctp_addr_mgmt_ep_sa (struct sctp_inpcb*,struct sockaddr*,int ,int ,int *) ;

void
sctp_bindx_delete_address(struct sctp_inpcb *inp,
    struct sockaddr *sa, sctp_assoc_t assoc_id,
    uint32_t vrf_id, int *error)
{
 struct sockaddr *addr_touse;





 if (inp->sctp_flags & SCTP_PCB_FLAGS_BOUNDALL) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTPUTIL, EINVAL);
  *error = EINVAL;
  return;
 }
 addr_touse = sa;
 if (assoc_id == 0) {

  *error = sctp_addr_mgmt_ep_sa(inp, addr_touse,
      SCTP_DEL_IP_ADDRESS,
      vrf_id, ((void*)0));
 } else {



 }
}
