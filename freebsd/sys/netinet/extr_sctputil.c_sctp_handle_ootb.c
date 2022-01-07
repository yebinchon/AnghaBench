
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct sctp_inpcb {int sctp_flags; int sctp_asoc_list; } ;
struct sctp_chunkhdr {int chunk_type; int chunk_length; } ;
struct mbuf {int dummy; } ;


 scalar_t__ LIST_EMPTY (int *) ;

 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CALLED_DIRECTLY_NOCMPSET ;
 int SCTP_FREE_SHOULD_USE_ABORT ;


 int SCTP_PCB_FLAGS_SOCKET_GONE ;


 scalar_t__ SCTP_SIZE32 (unsigned int) ;
 int SCTP_STAT_INCR_COUNTER32 (int ) ;
 unsigned int ntohs (int ) ;
 int sctp_blackhole ;
 int sctp_inpcb_free (struct sctp_inpcb*,int ,int ) ;
 scalar_t__ sctp_m_getptr (struct mbuf*,int,int,int *) ;
 int sctp_send_abort (struct mbuf*,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,int ,struct mbuf*,int ,int ,int ,int ,int ) ;
 int sctp_send_shutdown_complete2 (struct sockaddr*,struct sockaddr*,struct sctphdr*,int ,int ,int ,int ,int ) ;
 int sctps_outoftheblue ;

void
sctp_handle_ootb(struct mbuf *m, int iphlen, int offset,
    struct sockaddr *src, struct sockaddr *dst,
    struct sctphdr *sh, struct sctp_inpcb *inp,
    struct mbuf *cause,
    uint8_t mflowtype, uint32_t mflowid, uint16_t fibnum,
    uint32_t vrf_id, uint16_t port)
{
 struct sctp_chunkhdr *ch, chunk_buf;
 unsigned int chk_length;
 int contains_init_chunk;

 SCTP_STAT_INCR_COUNTER32(sctps_outoftheblue);

 if (inp && (inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_GONE)) {
  if (LIST_EMPTY(&inp->sctp_asoc_list)) {
   sctp_inpcb_free(inp, SCTP_FREE_SHOULD_USE_ABORT,
       SCTP_CALLED_DIRECTLY_NOCMPSET);
  }
 }
 contains_init_chunk = 0;
 ch = (struct sctp_chunkhdr *)sctp_m_getptr(m, offset,
     sizeof(*ch), (uint8_t *)&chunk_buf);
 while (ch != ((void*)0)) {
  chk_length = ntohs(ch->chunk_length);
  if (chk_length < sizeof(*ch)) {

   break;
  }
  switch (ch->chunk_type) {
  case 131:
   contains_init_chunk = 1;
   break;
  case 130:

   return;
  case 132:

   return;
  case 128:




   return;
  case 129:
   sctp_send_shutdown_complete2(src, dst, sh,
       mflowtype, mflowid, fibnum,
       vrf_id, port);
   return;
  default:
   break;
  }
  offset += SCTP_SIZE32(chk_length);
  ch = (struct sctp_chunkhdr *)sctp_m_getptr(m, offset,
      sizeof(*ch), (uint8_t *)&chunk_buf);
 }
 if ((SCTP_BASE_SYSCTL(sctp_blackhole) == 0) ||
     ((SCTP_BASE_SYSCTL(sctp_blackhole) == 1) &&
     (contains_init_chunk == 0))) {
  sctp_send_abort(m, iphlen, src, dst, sh, 0, cause,
      mflowtype, mflowid, fibnum,
      vrf_id, port);
 }
}
