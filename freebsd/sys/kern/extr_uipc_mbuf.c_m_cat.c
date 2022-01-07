
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mbuf {int m_flags; scalar_t__ m_len; struct mbuf* m_next; } ;


 int M_NOMAP ;
 scalar_t__ M_TRAILINGSPACE (struct mbuf*) ;
 int M_WRITABLE (struct mbuf*) ;
 int bcopy (scalar_t__,scalar_t__,int ) ;
 int caddr_t ;
 struct mbuf* m_free (struct mbuf*) ;
 scalar_t__ mtod (struct mbuf*,int ) ;

void
m_cat(struct mbuf *m, struct mbuf *n)
{
 while (m->m_next)
  m = m->m_next;
 while (n) {
  if (!M_WRITABLE(m) ||
      (n->m_flags & M_NOMAP) != 0 ||
      M_TRAILINGSPACE(m) < n->m_len) {

   m->m_next = n;
   return;
  }

  bcopy(mtod(n, caddr_t), mtod(m, caddr_t) + m->m_len,
      (u_int)n->m_len);
  m->m_len += n->m_len;
  n = m_free(n);
 }
}
