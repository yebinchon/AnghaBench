
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv; int mon_id; } ;
typedef TYPE_1__ mon ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_mon_id (int *,int *) ;
 int xdr_opaque (int *,int ,int) ;

bool_t
xdr_mon(XDR *xdrs, mon *objp)
{

 if (!xdr_mon_id(xdrs, &objp->mon_id))
  return (FALSE);
 if (!xdr_opaque(xdrs, objp->priv, 16))
  return (FALSE);
 return (TRUE);
}
