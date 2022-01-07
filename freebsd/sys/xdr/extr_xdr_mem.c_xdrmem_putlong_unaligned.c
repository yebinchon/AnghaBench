
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int int32_t ;
typedef int bool_t ;
struct TYPE_3__ {int x_handy; char* x_private; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;
 int htonl (int ) ;
 int memmove (char*,int *,int) ;

__attribute__((used)) static bool_t
xdrmem_putlong_unaligned(XDR *xdrs, const long *lp)
{
 u_int32_t l;

 if (xdrs->x_handy < sizeof(int32_t))
  return (FALSE);
 xdrs->x_handy -= sizeof(int32_t);
 l = htonl((u_int32_t)*lp);
 memmove(xdrs->x_private, &l, sizeof(int32_t));
 xdrs->x_private = (char *)xdrs->x_private + sizeof(int32_t);
 return (TRUE);
}
