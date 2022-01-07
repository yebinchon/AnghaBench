
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ sm_stat ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_int (int *,int *) ;

bool_t
xdr_sm_stat(XDR *xdrs, sm_stat *objp)
{

 if (!xdr_int(xdrs, &objp->state))
  return (FALSE);
 return (TRUE);
}
