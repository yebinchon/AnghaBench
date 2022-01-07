
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in6 {int sin_len; int sin6_len; int sin6_addr; int sin6_family; TYPE_2__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
union sctp_sockstore {struct sockaddr_in6 sin6; struct sockaddr_in6 sin; struct sockaddr sa; } ;
typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_in {int sin_len; int sin6_len; int sin6_addr; int sin6_family; TYPE_2__ sin_addr; int sin_family; } ;
struct TYPE_7__ {int deleted_primary; TYPE_4__* primary_destination; int * alternate; } ;
struct sctp_tcb {TYPE_3__ asoc; int sctp_ep; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_ipv6addr_param {int addr; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct TYPE_5__ {int param_length; } ;
struct sctp_asconf_paramhdr {int correlation_id; TYPE_1__ ph; } ;
struct mbuf {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int caddr_t ;
struct TYPE_8__ {int dest_state; } ;


 int AF_INET ;
 int AF_INET6 ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;
 int SCTPDBG (int ,char*) ;
 int SCTPDBG_ADDR (int ,struct sockaddr*) ;
 int SCTP_ADDR_PF ;
 int SCTP_ADDR_REACHABLE ;
 int SCTP_ADDR_UNCONFIRMED ;
 scalar_t__ SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CAUSE_UNRESOLVABLE_ADDR ;
 int SCTP_DEBUG_ASCONF1 ;
 scalar_t__ SCTP_FROM_SCTP_ASCONF ;


 scalar_t__ SCTP_LOC_1 ;
 int SCTP_MOBILITY_BASE ;
 int SCTP_MOBILITY_FASTHANDOFF ;
 int SCTP_MOBILITY_PRIM_DELETED ;
 int SCTP_NOTIFY_ASCONF_SET_PRIMARY ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_TIMER_TYPE_PRIM_DELETED ;
 int memcpy (int ,int ,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int ntohs (int ) ;
 struct mbuf* sctp_asconf_error_response (int ,int ,int *,int) ;
 struct mbuf* sctp_asconf_success_response (int ) ;
 int sctp_assoc_immediate_retrans (struct sctp_tcb*,TYPE_4__*) ;
 int sctp_delete_prim_timer (int ,struct sctp_tcb*,int ) ;
 int sctp_free_remote_addr (int *) ;
 scalar_t__ sctp_is_mobility_feature_on (int ,int ) ;
 int sctp_move_chunks_from_net (struct sctp_tcb*,int ) ;
 int sctp_nat_friendly ;
 scalar_t__ sctp_set_primary_addr (struct sctp_tcb*,struct sockaddr*,int *) ;
 int sctp_timer_stop (int ,int ,struct sctp_tcb*,int *,scalar_t__) ;
 int sctp_ulp_notify (int ,struct sctp_tcb*,int ,struct sockaddr*,int ) ;

__attribute__((used)) static struct mbuf *
sctp_process_asconf_set_primary(struct sockaddr *src,
    struct sctp_asconf_paramhdr *aph,
    struct sctp_tcb *stcb, int response_required)
{
 struct mbuf *m_reply = ((void*)0);
 union sctp_sockstore store;
 struct sctp_paramhdr *ph;
 uint16_t param_type, aparam_length;



 struct sockaddr *sa;
 int zero_address = 0;
 aparam_length = ntohs(aph->ph.param_length);
 if (aparam_length < sizeof(struct sctp_asconf_paramhdr) + sizeof(struct sctp_paramhdr)) {
  return (((void*)0));
 }
 ph = (struct sctp_paramhdr *)(aph + 1);
 param_type = ntohs(ph->param_type);






 sa = &store.sa;
 switch (param_type) {
 default:
  m_reply = sctp_asconf_error_response(aph->correlation_id,
      SCTP_CAUSE_UNRESOLVABLE_ADDR, (uint8_t *)aph,
      aparam_length);
  return (m_reply);
 }


 if (zero_address && SCTP_BASE_SYSCTL(sctp_nat_friendly)) {
  sa = src;
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_asconf_set_primary: using source addr ");
  SCTPDBG_ADDR(SCTP_DEBUG_ASCONF1, src);
 }

 if (sctp_set_primary_addr(stcb, sa, ((void*)0)) == 0) {
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_asconf_set_primary: primary address set\n");

  sctp_ulp_notify(SCTP_NOTIFY_ASCONF_SET_PRIMARY, stcb, 0, sa, SCTP_SO_NOT_LOCKED);
  if ((stcb->asoc.primary_destination->dest_state & SCTP_ADDR_REACHABLE) &&
      (!(stcb->asoc.primary_destination->dest_state & SCTP_ADDR_PF)) &&
      (stcb->asoc.alternate)) {
   sctp_free_remote_addr(stcb->asoc.alternate);
   stcb->asoc.alternate = ((void*)0);
  }
  if (response_required) {
   m_reply = sctp_asconf_success_response(aph->correlation_id);
  }
  if ((sctp_is_mobility_feature_on(stcb->sctp_ep,
      SCTP_MOBILITY_BASE) ||
      sctp_is_mobility_feature_on(stcb->sctp_ep,
      SCTP_MOBILITY_FASTHANDOFF)) &&
      sctp_is_mobility_feature_on(stcb->sctp_ep,
      SCTP_MOBILITY_PRIM_DELETED) &&
      (stcb->asoc.primary_destination->dest_state &
      SCTP_ADDR_UNCONFIRMED) == 0) {

   sctp_timer_stop(SCTP_TIMER_TYPE_PRIM_DELETED,
       stcb->sctp_ep, stcb, ((void*)0),
       SCTP_FROM_SCTP_ASCONF + SCTP_LOC_1);
   if (sctp_is_mobility_feature_on(stcb->sctp_ep,
       SCTP_MOBILITY_FASTHANDOFF)) {
    sctp_assoc_immediate_retrans(stcb,
        stcb->asoc.primary_destination);
   }
   if (sctp_is_mobility_feature_on(stcb->sctp_ep,
       SCTP_MOBILITY_BASE)) {
    sctp_move_chunks_from_net(stcb,
        stcb->asoc.deleted_primary);
   }
   sctp_delete_prim_timer(stcb->sctp_ep, stcb,
       stcb->asoc.deleted_primary);
  }
 } else {

  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_asconf_set_primary: set primary failed!\n");

  m_reply = sctp_asconf_error_response(aph->correlation_id,
      SCTP_CAUSE_UNRESOLVABLE_ADDR, (uint8_t *)aph,
      aparam_length);
 }

 return (m_reply);
}
