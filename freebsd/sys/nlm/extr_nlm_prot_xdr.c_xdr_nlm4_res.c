
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stat; int cookie; } ;
typedef TYPE_1__ nlm4_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_netobj (int *,int *) ;
 int xdr_nlm4_stat (int *,int *) ;

bool_t
xdr_nlm4_res(XDR *xdrs, nlm4_res *objp)
{

 if (!xdr_netobj(xdrs, &objp->cookie))
  return (FALSE);
 if (!xdr_nlm4_stat(xdrs, &objp->stat))
  return (FALSE);
 return (TRUE);
}
