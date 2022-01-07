
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int bool_t ;
struct TYPE_3__ {char* x_base; char* x_private; int x_handy; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool_t
xdrmem_setpos(XDR *xdrs, u_int pos)
{
 char *newaddr = xdrs->x_base + pos;
 char *lastaddr = (char *)xdrs->x_private + xdrs->x_handy;

 if (newaddr > lastaddr)
  return (FALSE);
 xdrs->x_private = newaddr;
 xdrs->x_handy = (u_int)(lastaddr - newaddr);
 return (TRUE);
}
