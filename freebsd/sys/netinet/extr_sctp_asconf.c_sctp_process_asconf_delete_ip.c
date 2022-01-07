
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in6 {int sin_len; int sin6_len; int sin6_addr; int sin6_port; int sin6_family; TYPE_2__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
union sctp_sockstore {struct sockaddr_in6 sin6; struct sockaddr_in6 sin; struct sockaddr sa; } ;
typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_in {int sin_len; int sin6_len; int sin6_addr; int sin6_port; int sin6_family; TYPE_2__ sin_addr; int sin_port; int sin_family; } ;
struct sctp_tcb {int rport; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_ipv6addr_param {int addr; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct TYPE_3__ {int param_length; } ;
struct sctp_asconf_paramhdr {int correlation_id; TYPE_1__ ph; } ;
struct mbuf {int dummy; } ;
struct in6_addr {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;
 int SCTPDBG (int ,char*) ;
 int SCTPDBG_ADDR (int ,struct sockaddr*) ;
 scalar_t__ SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CAUSE_DELETING_LAST_ADDR ;
 int SCTP_CAUSE_DELETING_SRC_ADDR ;
 int SCTP_CAUSE_REQUEST_REFUSED ;
 int SCTP_CAUSE_UNRESOLVABLE_ADDR ;
 int SCTP_DEBUG_ASCONF1 ;


 int SCTP_NOTIFY_ASCONF_DELETE_IP ;
 int SCTP_SO_NOT_LOCKED ;
 int memcpy (int *,int ,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int ntohs (int ) ;
 int sctp_asconf_del_remote_addrs_except (struct sctp_tcb*,struct sockaddr*) ;
 struct mbuf* sctp_asconf_error_response (int ,int ,int *,int) ;
 struct mbuf* sctp_asconf_success_response (int ) ;
 scalar_t__ sctp_cmpaddr (struct sockaddr*,struct sockaddr*) ;
 int sctp_del_remote_addr (struct sctp_tcb*,struct sockaddr*) ;
 int sctp_nat_friendly ;
 int sctp_ulp_notify (int ,struct sctp_tcb*,int ,struct sockaddr*,int ) ;

__attribute__((used)) static struct mbuf *
sctp_process_asconf_delete_ip(struct sockaddr *src,
    struct sctp_asconf_paramhdr *aph,
    struct sctp_tcb *stcb, int response_required)
{
 struct mbuf *m_reply = ((void*)0);
 union sctp_sockstore store;
 struct sctp_paramhdr *ph;
 uint16_t param_type, aparam_length;



 struct sockaddr *sa;
 int zero_address = 0;
 int result;
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


 if (sctp_cmpaddr(sa, src)) {

  SCTPDBG(SCTP_DEBUG_ASCONF1, "process_asconf_delete_ip: tried to delete source addr\n");
  m_reply = sctp_asconf_error_response(aph->correlation_id,
      SCTP_CAUSE_DELETING_SRC_ADDR, (uint8_t *)aph,
      aparam_length);
  return (m_reply);
 }


 if (zero_address && SCTP_BASE_SYSCTL(sctp_nat_friendly)) {
  result = sctp_asconf_del_remote_addrs_except(stcb, src);

  if (result) {

   SCTPDBG(SCTP_DEBUG_ASCONF1, "process_asconf_delete_ip: src addr does not exist?\n");

   m_reply =
       sctp_asconf_error_response(aph->correlation_id,
       SCTP_CAUSE_REQUEST_REFUSED, (uint8_t *)aph,
       aparam_length);
  } else if (response_required) {
   m_reply =
       sctp_asconf_success_response(aph->correlation_id);
  }
  return (m_reply);
 }


 result = sctp_del_remote_addr(stcb, sa);





 if (result == -1) {

  SCTPDBG(SCTP_DEBUG_ASCONF1, "process_asconf_delete_ip: tried to delete last IP addr!\n");
  m_reply = sctp_asconf_error_response(aph->correlation_id,
      SCTP_CAUSE_DELETING_LAST_ADDR, (uint8_t *)aph,
      aparam_length);
 } else {
  if (response_required) {
   m_reply = sctp_asconf_success_response(aph->correlation_id);
  }

  sctp_ulp_notify(SCTP_NOTIFY_ASCONF_DELETE_IP, stcb, 0, sa, SCTP_SO_NOT_LOCKED);
 }
 return (m_reply);
}
