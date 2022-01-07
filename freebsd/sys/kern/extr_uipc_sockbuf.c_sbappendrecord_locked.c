
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {struct mbuf* sb_mbtail; } ;
struct mbuf {int m_flags; struct mbuf* m_next; } ;


 int M_EOR ;
 int SBLASTRECORDCHK (struct sockbuf*) ;
 int SBLINKRECORD (struct sockbuf*,struct mbuf*) ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int m_clrprotoflags (struct mbuf*) ;
 int sballoc (struct sockbuf*,struct mbuf*) ;
 int sbcompress (struct sockbuf*,struct mbuf*,struct mbuf*) ;

void
sbappendrecord_locked(struct sockbuf *sb, struct mbuf *m0)
{
 struct mbuf *m;

 SOCKBUF_LOCK_ASSERT(sb);

 if (m0 == ((void*)0))
  return;
 m_clrprotoflags(m0);




 sballoc(sb, m0);
 SBLASTRECORDCHK(sb);
 SBLINKRECORD(sb, m0);
 sb->sb_mbtail = m0;
 m = m0->m_next;
 m0->m_next = 0;
 if (m && (m0->m_flags & M_EOR)) {
  m0->m_flags &= ~M_EOR;
  m->m_flags |= M_EOR;
 }

 sbcompress(sb, m, m0);
}
