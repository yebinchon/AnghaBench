
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ x_handy; char* x_private; } ;
typedef TYPE_1__ XDR ;



__attribute__((used)) static int32_t *
xdrmem_inline_aligned(XDR *xdrs, u_int len)
{
 int32_t *buf = ((void*)0);

 if (xdrs->x_handy >= len) {
  xdrs->x_handy -= len;
  buf = (int32_t *)xdrs->x_private;
  xdrs->x_private = (char *)xdrs->x_private + len;
 }
 return (buf);
}
