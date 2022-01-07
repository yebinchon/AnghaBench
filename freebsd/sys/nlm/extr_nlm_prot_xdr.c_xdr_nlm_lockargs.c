
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int reclaim; int alock; int exclusive; int block; int cookie; } ;
typedef TYPE_1__ nlm_lockargs ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_bool (int *,int *) ;
 int xdr_int (int *,int *) ;
 int xdr_netobj (int *,int *) ;
 int xdr_nlm_lock (int *,int *) ;

bool_t
xdr_nlm_lockargs(XDR *xdrs, nlm_lockargs *objp)
{

 if (!xdr_netobj(xdrs, &objp->cookie))
  return (FALSE);
 if (!xdr_bool(xdrs, &objp->block))
  return (FALSE);
 if (!xdr_bool(xdrs, &objp->exclusive))
  return (FALSE);
 if (!xdr_nlm_lock(xdrs, &objp->alock))
  return (FALSE);
 if (!xdr_bool(xdrs, &objp->reclaim))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->state))
  return (FALSE);
 return (TRUE);
}
