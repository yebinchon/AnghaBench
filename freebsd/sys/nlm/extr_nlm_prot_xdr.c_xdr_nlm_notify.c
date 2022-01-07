
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int name; } ;
typedef TYPE_1__ nlm_notify ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAXNAMELEN ;
 int TRUE ;
 int xdr_long (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_nlm_notify(XDR *xdrs, nlm_notify *objp)
{

 if (!xdr_string(xdrs, &objp->name, MAXNAMELEN))
  return (FALSE);
 if (!xdr_long(xdrs, &objp->state))
  return (FALSE);
 return (TRUE);
}
