
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct mbuf {int dummy; } ;


 int SCTP_ABORT_ASSOCIATION ;
 scalar_t__ sctp_is_there_an_abort_here (struct mbuf*,int,int *) ;
 int sctp_m_freem (struct mbuf*) ;
 int sctp_send_resp_msg (struct sockaddr*,struct sockaddr*,struct sctphdr*,int ,int ,struct mbuf*,int ,int ,int ,int ,int ) ;

void
sctp_send_abort(struct mbuf *m, int iphlen, struct sockaddr *src, struct sockaddr *dst,
    struct sctphdr *sh, uint32_t vtag, struct mbuf *cause,
    uint8_t mflowtype, uint32_t mflowid, uint16_t fibnum,
    uint32_t vrf_id, uint16_t port)
{

 if (sctp_is_there_an_abort_here(m, iphlen, &vtag)) {
  if (cause)
   sctp_m_freem(cause);
  return;
 }
 sctp_send_resp_msg(src, dst, sh, vtag, SCTP_ABORT_ASSOCIATION, cause,
     mflowtype, mflowid, fibnum,
     vrf_id, port);
 return;
}
