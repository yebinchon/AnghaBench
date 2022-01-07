
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int holder; } ;
struct TYPE_5__ {int stat; TYPE_1__ nlm_testrply_u; } ;
typedef TYPE_2__ nlm_testrply ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;

 int xdr_nlm_holder (int *,int *) ;
 int xdr_nlm_stats (int *,int*) ;

bool_t
xdr_nlm_testrply(XDR *xdrs, nlm_testrply *objp)
{

 if (!xdr_nlm_stats(xdrs, &objp->stat))
  return (FALSE);
 switch (objp->stat) {
 case 128:
  if (!xdr_nlm_holder(xdrs, &objp->nlm_testrply_u.holder))
   return (FALSE);
  break;
 default:
  break;
 }
 return (TRUE);
}
