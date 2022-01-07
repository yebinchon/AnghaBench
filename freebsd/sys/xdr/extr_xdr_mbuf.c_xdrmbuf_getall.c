
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {struct mbuf* m_next; } ;
struct TYPE_3__ {scalar_t__ x_op; int x_handy; int * x_private; int * x_base; int * x_ops; } ;
typedef TYPE_1__ XDR ;


 int KASSERT (int,char*) ;
 int MT_DATA ;
 int M_WAITOK ;
 scalar_t__ XDR_DECODE ;
 int m_adj (struct mbuf*,int ) ;
 struct mbuf* m_get (int ,int ) ;
 int xdrmbuf_ops ;

struct mbuf *
xdrmbuf_getall(XDR *xdrs)
{
 struct mbuf *m0, *m;

 KASSERT(xdrs->x_ops == &xdrmbuf_ops && xdrs->x_op == XDR_DECODE,
     ("xdrmbuf_append: invalid XDR stream"));

 m0 = (struct mbuf *) xdrs->x_base;
 m = (struct mbuf *) xdrs->x_private;
 if (m0 != m) {
  while (m0->m_next != m)
   m0 = m0->m_next;
  m0->m_next = ((void*)0);
  xdrs->x_private = ((void*)0);
 } else {
  xdrs->x_base = ((void*)0);
  xdrs->x_private = ((void*)0);
 }

 if (m)
  m_adj(m, xdrs->x_handy);
 else
  m = m_get(M_WAITOK, MT_DATA);
 return (m);
}
