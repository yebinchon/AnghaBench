
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int bool_t ;
struct TYPE_3__ {int x_handy; } ;
typedef TYPE_1__ XDR ;


 int TRUE ;

__attribute__((used)) static bool_t
x_putbytes(XDR *xdrs, const char *bp, u_int len)
{

 xdrs->x_handy += len;
 return (TRUE);
}
