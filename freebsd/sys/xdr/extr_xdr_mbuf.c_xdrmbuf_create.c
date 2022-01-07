
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {scalar_t__ m_len; } ;
typedef enum xdr_op { ____Placeholder_xdr_op } xdr_op ;
struct TYPE_3__ {int x_op; char* x_base; scalar_t__ x_handy; struct mbuf* x_private; int * x_ops; } ;
typedef TYPE_1__ XDR ;


 int KASSERT (int ,char*) ;
 int XDR_ENCODE ;
 struct mbuf* m_last (struct mbuf*) ;
 int xdrmbuf_ops ;

void
xdrmbuf_create(XDR *xdrs, struct mbuf *m, enum xdr_op op)
{

 KASSERT(m != ((void*)0), ("xdrmbuf_create with NULL mbuf chain"));
 xdrs->x_op = op;
 xdrs->x_ops = &xdrmbuf_ops;
 xdrs->x_base = (char *) m;
 if (op == XDR_ENCODE) {
  m = m_last(m);
  xdrs->x_private = m;
  xdrs->x_handy = m->m_len;
 } else {
  xdrs->x_private = m;
  xdrs->x_handy = 0;
 }
}
