
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; struct mbuf* m_next; } ;


 int M_NOMAP ;
 struct mbuf* _mb_unmapped_to_ext (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_last (struct mbuf*) ;

struct mbuf *
mb_unmapped_to_ext(struct mbuf *top)
{
 struct mbuf *m, *next, *prev = ((void*)0);

 prev = ((void*)0);
 for (m = top; m != ((void*)0); m = next) {

  next = m->m_next;
  if (m->m_flags & M_NOMAP) {
   if (prev != ((void*)0)) {






    prev->m_next = ((void*)0);
   }
   m = _mb_unmapped_to_ext(m);
   if (m == ((void*)0)) {
    m_freem(top);
    m_freem(next);
    return (((void*)0));
   }
   if (prev == ((void*)0)) {
    top = m;
   } else {
    prev->m_next = m;
   }





   prev = m_last(m);
  } else {
   if (prev != ((void*)0)) {
    prev->m_next = m;
   }
   prev = m;
  }
 }
 return (top);
}
