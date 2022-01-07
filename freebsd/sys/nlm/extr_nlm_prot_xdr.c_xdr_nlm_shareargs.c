
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reclaim; int share; int cookie; } ;
typedef TYPE_1__ nlm_shareargs ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_bool (int *,int *) ;
 int xdr_netobj (int *,int *) ;
 int xdr_nlm_share (int *,int *) ;

bool_t
xdr_nlm_shareargs(XDR *xdrs, nlm_shareargs *objp)
{

 if (!xdr_netobj(xdrs, &objp->cookie))
  return (FALSE);
 if (!xdr_nlm_share(xdrs, &objp->share))
  return (FALSE);
 if (!xdr_bool(xdrs, &objp->reclaim))
  return (FALSE);
 return (TRUE);
}
