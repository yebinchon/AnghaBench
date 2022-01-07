
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int name; } ;
typedef TYPE_1__ nlm4_notify ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAXNAMELEN ;
 int TRUE ;
 int xdr_int32_t (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_nlm4_notify(XDR *xdrs, nlm4_notify *objp)
{

 if (!xdr_string(xdrs, &objp->name, MAXNAMELEN))
  return (FALSE);
 if (!xdr_int32_t(xdrs, &objp->state))
  return (FALSE);
 return (TRUE);
}
