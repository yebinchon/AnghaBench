
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; struct mbuf* m_next; } ;



struct mbuf *
m_getptr(struct mbuf *m, int loc, int *off)
{

 while (loc >= 0) {

  if (m->m_len > loc) {
   *off = loc;
   return (m);
  } else {
   loc -= m->m_len;
   if (m->m_next == ((void*)0)) {
    if (loc == 0) {

     *off = m->m_len;
     return (m);
    }
    return (((void*)0));
   }
   m = m->m_next;
  }
 }
 return (((void*)0));
}
