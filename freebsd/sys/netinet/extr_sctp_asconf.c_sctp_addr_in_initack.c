
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_ipv6addr_param {int addr; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct mbuf {int dummy; } ;
struct in6_addr {int dummy; } ;




 int IN6_IS_SCOPE_LINKLOCAL (int *) ;
 int SCTPDBG (int ,char*) ;
 int SCTPDBG_ADDR (int ,struct sockaddr*) ;
 int SCTP_DEBUG_ASCONF1 ;
 int SCTP_DEBUG_ASCONF2 ;


 scalar_t__ SCTP_SIZE32 (int) ;
 int in6_clearscope (int *) ;
 int memcmp (int *,int ,int) ;
 int memcpy (struct sockaddr_in6*,struct sockaddr_in6*,int) ;
 int ntohs (int ) ;
 scalar_t__ sctp_m_getptr (struct mbuf*,scalar_t__,int,int *) ;

__attribute__((used)) static uint32_t
sctp_addr_in_initack(struct mbuf *m, uint32_t offset, uint32_t length, struct sockaddr *sa)
{
 struct sctp_paramhdr tmp_param, *ph;
 uint16_t plen, ptype;
 switch (sa->sa_family) {
 default:
  return (0);
 }

 SCTPDBG(SCTP_DEBUG_ASCONF2, "find_initack_addr: starting search for ");
 SCTPDBG_ADDR(SCTP_DEBUG_ASCONF2, sa);

 length += offset;

 if ((offset + sizeof(struct sctp_paramhdr)) > length) {
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "find_initack_addr: invalid offset?\n");
  return (0);
 }

 ph = (struct sctp_paramhdr *)sctp_m_getptr(m, offset,
     sizeof(struct sctp_paramhdr), (uint8_t *)&tmp_param);
 while (ph != ((void*)0)) {
  ptype = ntohs(ph->param_type);
  plen = ntohs(ph->param_length);
  switch (ptype) {
  default:
   break;
  }

  offset += SCTP_SIZE32(plen);
  if (offset + sizeof(struct sctp_paramhdr) > length) {
   return (0);
  }
  ph = (struct sctp_paramhdr *)
      sctp_m_getptr(m, offset, sizeof(struct sctp_paramhdr),
      (uint8_t *)&tmp_param);
 }

 return (0);
}
