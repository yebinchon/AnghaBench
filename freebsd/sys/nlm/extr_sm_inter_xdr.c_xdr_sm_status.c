
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv; int state; int mon_name; } ;
typedef TYPE_1__ sm_status ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int SM_MAXSTRLEN ;
 int TRUE ;
 int xdr_int (int *,int *) ;
 int xdr_opaque (int *,int ,int) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_sm_status(XDR *xdrs, sm_status *objp)
{

 if (!xdr_string(xdrs, &objp->mon_name, SM_MAXSTRLEN))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->state))
  return (FALSE);
 if (!xdr_opaque(xdrs, objp->priv, 16))
  return (FALSE);
 return (TRUE);
}
