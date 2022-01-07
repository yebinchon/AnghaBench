
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sockbuf {struct mbuf* sb_sndptr; int sb_sndptroff; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; } ;



void
sbsndptr_adv(struct sockbuf *sb, struct mbuf *mb, uint32_t len)
{




 struct mbuf *m;

 if (mb != sb->sb_sndptr) {

  return;
 }
 m = mb;
 while (m && (len > 0)) {
  if (len >= m->m_len) {
   len -= m->m_len;
   if (m->m_next) {
    sb->sb_sndptroff += m->m_len;
    sb->sb_sndptr = m->m_next;
   }
   m = m->m_next;
  } else {
   len = 0;
  }
 }
}
