
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_3__ {scalar_t__ x_op; int * x_private; int * x_base; } ;
typedef TYPE_1__ XDR ;


 scalar_t__ XDR_DECODE ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
xdrmbuf_destroy(XDR *xdrs)
{

 if (xdrs->x_op == XDR_DECODE && xdrs->x_base) {
  m_freem((struct mbuf *) xdrs->x_base);
  xdrs->x_base = ((void*)0);
  xdrs->x_private = ((void*)0);
 }
}
