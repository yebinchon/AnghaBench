
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sctphdr {int dummy; } ;
struct TYPE_2__ {int initiate_tag; } ;
struct sctp_init_chunk {TYPE_1__ init; } ;
struct sctp_chunkhdr {scalar_t__ chunk_type; int chunk_length; } ;
struct mbuf {int dummy; } ;


 scalar_t__ SCTP_ABORT_ASSOCIATION ;
 scalar_t__ SCTP_INITIATION ;
 scalar_t__ SCTP_SIZE32 (unsigned int) ;
 int ntohl (int ) ;
 unsigned int ntohs (int ) ;
 scalar_t__ sctp_m_getptr (struct mbuf*,int,int,int *) ;

int
sctp_is_there_an_abort_here(struct mbuf *m, int iphlen, uint32_t *vtagfill)
{
 struct sctp_chunkhdr *ch;
 struct sctp_init_chunk *init_chk, chunk_buf;
 int offset;
 unsigned int chk_length;

 offset = iphlen + sizeof(struct sctphdr);
 ch = (struct sctp_chunkhdr *)sctp_m_getptr(m, offset, sizeof(*ch),
     (uint8_t *)&chunk_buf);
 while (ch != ((void*)0)) {
  chk_length = ntohs(ch->chunk_length);
  if (chk_length < sizeof(*ch)) {

   break;
  }

  if (ch->chunk_type == SCTP_ABORT_ASSOCIATION) {

   return (1);
  }
  if (ch->chunk_type == SCTP_INITIATION) {

   init_chk = (struct sctp_init_chunk *)sctp_m_getptr(m,
       offset, sizeof(*init_chk), (uint8_t *)&chunk_buf);
   if (init_chk != ((void*)0)) {
    *vtagfill = ntohl(init_chk->init.initiate_tag);
   }
  }

  offset += SCTP_SIZE32(chk_length);
  ch = (struct sctp_chunkhdr *)sctp_m_getptr(m, offset,
      sizeof(*ch), (uint8_t *)&chunk_buf);
 }
 return (0);
}
