
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {struct mbuf* sb_mb; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int SB_EMPTY_FIXUP (struct sockbuf*) ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 struct mbuf* m_free (struct mbuf*) ;
 int sbfree (struct sockbuf*,struct mbuf*) ;

void
sbdroprecord_locked(struct sockbuf *sb)
{
 struct mbuf *m;

 SOCKBUF_LOCK_ASSERT(sb);

 m = sb->sb_mb;
 if (m) {
  sb->sb_mb = m->m_nextpkt;
  do {
   sbfree(sb, m);
   m = m_free(m);
  } while (m);
 }
 SB_EMPTY_FIXUP(sb);
}
