
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_len; int l_offset; int oh; int svid; int exclusive; } ;
typedef TYPE_1__ nlm_holder ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_bool (int *,int *) ;
 int xdr_int (int *,int *) ;
 int xdr_netobj (int *,int *) ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_nlm_holder(XDR *xdrs, nlm_holder *objp)
{

 if (!xdr_bool(xdrs, &objp->exclusive))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->svid))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->oh))
  return (FALSE);
 if (!xdr_u_int(xdrs, &objp->l_offset))
  return (FALSE);
 if (!xdr_u_int(xdrs, &objp->l_len))
  return (FALSE);
 return (TRUE);
}
