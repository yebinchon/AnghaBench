
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int m_len; struct mbuf* m_next; } ;
struct TYPE_3__ {scalar_t__ x_op; int x_handy; struct mbuf* x_private; int * x_ops; } ;
typedef TYPE_1__ XDR ;


 int KASSERT (int,char*) ;
 scalar_t__ XDR_ENCODE ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_last (struct mbuf*) ;
 scalar_t__ m_length (struct mbuf*,int *) ;
 int xdrmbuf_ops ;

void
xdrmbuf_append(XDR *xdrs, struct mbuf *madd)
{
 struct mbuf *m;

 KASSERT(xdrs->x_ops == &xdrmbuf_ops && xdrs->x_op == XDR_ENCODE,
     ("xdrmbuf_append: invalid XDR stream"));

 if (m_length(madd, ((void*)0)) == 0) {
  m_freem(madd);
  return;
 }

 m = (struct mbuf *) xdrs->x_private;
 m->m_next = madd;

 m = m_last(madd);
 xdrs->x_private = m;
 xdrs->x_handy = m->m_len;
}
