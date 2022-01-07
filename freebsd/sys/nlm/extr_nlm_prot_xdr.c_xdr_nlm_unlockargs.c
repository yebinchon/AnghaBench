
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alock; int cookie; } ;
typedef TYPE_1__ nlm_unlockargs ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_netobj (int *,int *) ;
 int xdr_nlm_lock (int *,int *) ;

bool_t
xdr_nlm_unlockargs(XDR *xdrs, nlm_unlockargs *objp)
{

 if (!xdr_netobj(xdrs, &objp->cookie))
  return (FALSE);
 if (!xdr_nlm_lock(xdrs, &objp->alock))
  return (FALSE);
 return (TRUE);
}
