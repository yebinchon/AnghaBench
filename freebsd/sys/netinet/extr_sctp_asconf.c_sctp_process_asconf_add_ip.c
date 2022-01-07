
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in6 {int sin_len; int sin6_len; int sin6_addr; int sin6_port; int sin6_family; TYPE_2__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
union sctp_sockstore {struct sockaddr_in6 sin6; struct sockaddr_in6 sin; struct sockaddr sa; } ;
typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_in {int sin_len; int sin6_len; int sin6_addr; int sin6_port; int sin6_family; TYPE_2__ sin_addr; int sin_port; int sin_family; } ;
struct TYPE_6__ {int port; } ;
struct sctp_tcb {int sctp_ep; TYPE_3__ asoc; int rport; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_nets {int dummy; } ;
struct sctp_ipv6addr_param {int addr; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct TYPE_4__ {int param_length; } ;
struct sctp_asconf_paramhdr {int correlation_id; TYPE_1__ ph; } ;
struct mbuf {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int caddr_t ;


 int AF_INET ;
 int AF_INET6 ;
 int IN6_IS_ADDR_MULTICAST (int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;
 int INADDR_BROADCAST ;
 int IN_MULTICAST (int ) ;
 int SCTPDBG (int ,char*) ;
 int SCTPDBG_ADDR (int ,struct sockaddr*) ;
 int SCTP_ADDR_DYNAMIC_ADDED ;
 scalar_t__ SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CAUSE_INVALID_PARAM ;
 int SCTP_CAUSE_RESOURCE_SHORTAGE ;
 int SCTP_DEBUG_ASCONF1 ;
 int SCTP_DONOT_SETSCOPE ;


 int SCTP_NOTIFY_ASCONF_ADD_IP ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_TIMER_TYPE_HEARTBEAT ;
 int SCTP_TIMER_TYPE_PATHMTURAISE ;
 int memcpy (int ,int ,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 scalar_t__ sctp_add_remote_addr (struct sctp_tcb*,struct sockaddr*,struct sctp_nets**,int ,int ,int ) ;
 struct mbuf* sctp_asconf_error_response (int ,int ,int *,int) ;
 struct mbuf* sctp_asconf_success_response (int ) ;
 int sctp_nat_friendly ;
 int sctp_send_hb (struct sctp_tcb*,struct sctp_nets*,int ) ;
 int sctp_timer_start (int ,int ,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_ulp_notify (int ,struct sctp_tcb*,int ,struct sockaddr*,int ) ;

__attribute__((used)) static struct mbuf *
sctp_process_asconf_add_ip(struct sockaddr *src, struct sctp_asconf_paramhdr *aph,
    struct sctp_tcb *stcb, int send_hb, int response_required)
{
 struct sctp_nets *net;
 struct mbuf *m_reply = ((void*)0);
 union sctp_sockstore store;
 struct sctp_paramhdr *ph;
 uint16_t param_type, aparam_length;



 struct sockaddr *sa;
 int zero_address = 0;
 int bad_address = 0;
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
      SCTP_CAUSE_INVALID_PARAM, (uint8_t *)aph,
      aparam_length);
  return (m_reply);
 }


 if (zero_address && SCTP_BASE_SYSCTL(sctp_nat_friendly)) {
  sa = src;
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_asconf_add_ip: using source addr ");
  SCTPDBG_ADDR(SCTP_DEBUG_ASCONF1, src);
 }
 net = ((void*)0);

 if (bad_address) {
  m_reply = sctp_asconf_error_response(aph->correlation_id,
      SCTP_CAUSE_INVALID_PARAM, (uint8_t *)aph,
      aparam_length);
 } else if (sctp_add_remote_addr(stcb, sa, &net, stcb->asoc.port,
      SCTP_DONOT_SETSCOPE,
     SCTP_ADDR_DYNAMIC_ADDED) != 0) {
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_asconf_add_ip: error adding address\n");
  m_reply = sctp_asconf_error_response(aph->correlation_id,
      SCTP_CAUSE_RESOURCE_SHORTAGE, (uint8_t *)aph,
      aparam_length);
 } else {
  if (response_required) {
   m_reply =
       sctp_asconf_success_response(aph->correlation_id);
  }
  if (net != ((void*)0)) {

   sctp_ulp_notify(SCTP_NOTIFY_ASCONF_ADD_IP, stcb, 0, sa, SCTP_SO_NOT_LOCKED);
   sctp_timer_start(SCTP_TIMER_TYPE_PATHMTURAISE, stcb->sctp_ep, stcb, net);
   sctp_timer_start(SCTP_TIMER_TYPE_HEARTBEAT, stcb->sctp_ep,
       stcb, net);
   if (send_hb) {
    sctp_send_hb(stcb, net, SCTP_SO_NOT_LOCKED);
   }
  }
 }
 return (m_reply);
}
