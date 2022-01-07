
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
 long ntohl (int ) ;

__attribute__((used)) static bool_t
xdrmem_getlong_aligned(XDR *xdrs, long *lp)
{

 if (xdrs->x_handy < sizeof(int32_t))
  return (FALSE);
 xdrs->x_handy -= sizeof(int32_t);
 *lp = ntohl(*(u_int32_t *)xdrs->x_private);
 xdrs->x_private = (char *)xdrs->x_private + sizeof(int32_t);
 return (TRUE);
}
