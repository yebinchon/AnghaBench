
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {size_t m_size; size_t m_len; struct mbuf* m_next; } ;


 void* m_prepend (int *,void const*,size_t,int ) ;
 int memcpy (char*,void const*,size_t) ;

struct mbuf *
m_append(struct mbuf *bp, const void *v, size_t sz)
{
  struct mbuf *m = bp;

  if (m) {
    while (m->m_next)
      m = m->m_next;
    if (m->m_size - m->m_len >= sz) {
      if (v)
        memcpy((char *)(m + 1) + m->m_len, v, sz);
      m->m_len += sz;
    } else
      m->m_next = m_prepend(((void*)0), v, sz, 0);
  } else
    bp = m_prepend(((void*)0), v, sz, 0);

  return bp;
}
