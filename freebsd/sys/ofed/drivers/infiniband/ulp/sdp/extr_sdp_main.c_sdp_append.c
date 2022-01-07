
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockbuf {struct mbuf* sb_mbtail; struct mbuf* sb_sndptr; struct mbuf* sb_lastrecord; struct mbuf* sb_mb; } ;
struct sdp_sock {scalar_t__ xmit_size_goal; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {int m_flags; struct mbuf* m_next; struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;


 int KASSERT (int,char*) ;
 int M_PKTHDR ;
 int M_PUSH ;
 int M_URG ;
 scalar_t__ M_WRITABLE (struct mbuf*) ;
 int SBLASTRECORDCHK (struct sockbuf*) ;
 scalar_t__ SDP_HEAD_SIZE ;
 int SDP_MAX_SEND_SGES ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int m_demote (struct mbuf*,int,int ) ;
 int sballoc (struct sockbuf*,struct mbuf*) ;
 int sbcompress (struct sockbuf*,struct mbuf*,struct mbuf*) ;

__attribute__((used)) static void
sdp_append(struct sdp_sock *ssk, struct sockbuf *sb, struct mbuf *mb, int cnt)
{
 struct mbuf *n;
 int ncnt;

 SOCKBUF_LOCK_ASSERT(sb);
 SBLASTRECORDCHK(sb);
 KASSERT(mb->m_flags & M_PKTHDR,
  ("sdp_append: %p Missing packet header.\n", mb));
 n = sb->sb_lastrecord;



 if (n == ((void*)0)) {
  sb->sb_lastrecord = sb->sb_mb = sb->sb_sndptr = mb;
  for (; mb; mb = mb->m_next) {
                 sb->sb_mbtail = mb;
   sballoc(sb, mb);
  }
  return;
 }



 for (ncnt = 0; n->m_next; n = n->m_next)
  ncnt++;
 n = sb->sb_lastrecord;






 if (M_WRITABLE(n) && ncnt + cnt < SDP_MAX_SEND_SGES &&
     n->m_pkthdr.len + mb->m_pkthdr.len - SDP_HEAD_SIZE <
     ssk->xmit_size_goal) {
  m_adj(mb, SDP_HEAD_SIZE);
  n->m_pkthdr.len += mb->m_pkthdr.len;
  n->m_flags |= mb->m_flags & (M_PUSH | M_URG);
  m_demote(mb, 1, 0);
  sbcompress(sb, mb, sb->sb_mbtail);
  return;
 }



 sb->sb_lastrecord->m_flags |= M_PUSH;
 sb->sb_lastrecord->m_nextpkt = mb;
 sb->sb_lastrecord = mb;
 if (sb->sb_sndptr == ((void*)0))
  sb->sb_sndptr = mb;
 for (; mb; mb = mb->m_next) {
  sb->sb_mbtail = mb;
  sballoc(sb, mb);
 }
}
