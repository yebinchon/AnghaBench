
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stat; } ;
typedef TYPE_1__ nlm_stat ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_nlm_stats (int *,int *) ;

bool_t
xdr_nlm_stat(XDR *xdrs, nlm_stat *objp)
{

 if (!xdr_nlm_stats(xdrs, &objp->stat))
  return (FALSE);
 return (TRUE);
}
