
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; } ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ x_handy; void* x_private; scalar_t__ x_base; } ;
typedef TYPE_1__ XDR ;


 int KASSERT (struct mbuf*,char*) ;
 int TRUE ;

__attribute__((used)) static bool_t
xdrmbuf_setpos(XDR *xdrs, u_int pos)
{
 struct mbuf *m = (struct mbuf *) xdrs->x_base;

 while (m && pos > m->m_len) {
  pos -= m->m_len;
  m = m->m_next;
 }
 KASSERT(m, ("Corrupted mbuf chain"));

 xdrs->x_private = (void *) m;
 xdrs->x_handy = pos;

 return (TRUE);
}
