
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int res_stat; } ;
typedef TYPE_1__ sm_stat_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_int (int *,int *) ;
 int xdr_sm_res (int *,int *) ;

bool_t
xdr_sm_stat_res(XDR *xdrs, sm_stat_res *objp)
{

 if (!xdr_sm_res(xdrs, &objp->res_stat))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->state))
  return (FALSE);
 return (TRUE);
}
