
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {struct mbuf* sb_lastrecord; struct mbuf* sb_mb; } ;
struct mbuf {int m_flags; struct mbuf* m_next; struct mbuf* m_nextpkt; } ;


 int M_EOR ;
 int SBLASTRECORDCHK (struct sockbuf*) ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int sbappendrecord_locked (struct sockbuf*,struct mbuf*) ;
 int sbcompress (struct sockbuf*,struct mbuf*,struct mbuf*) ;
 int sbm_clrprotoflags (struct mbuf*,int) ;

void
sbappend_locked(struct sockbuf *sb, struct mbuf *m, int flags)
{
 struct mbuf *n;

 SOCKBUF_LOCK_ASSERT(sb);

 if (m == ((void*)0))
  return;
 sbm_clrprotoflags(m, flags);
 SBLASTRECORDCHK(sb);
 n = sb->sb_mb;
 if (n) {
  while (n->m_nextpkt)
   n = n->m_nextpkt;
  do {
   if (n->m_flags & M_EOR) {
    sbappendrecord_locked(sb, m);
    return;
   }
  } while (n->m_next && (n = n->m_next));
 } else {





  if ((n = sb->sb_lastrecord) != ((void*)0)) {
   do {
    if (n->m_flags & M_EOR) {
     sbappendrecord_locked(sb, m);
     return;
    }
   } while (n->m_next && (n = n->m_next));
  } else {




   sb->sb_lastrecord = m;
  }
 }
 sbcompress(sb, m, n);
 SBLASTRECORDCHK(sb);
}
