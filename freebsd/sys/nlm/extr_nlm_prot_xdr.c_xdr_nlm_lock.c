
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;
typedef TYPE_1__ nlm_lock ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int LM_MAXSTRLEN ;
 int TRUE ;
 int xdr_int (int *,int *) ;
 int xdr_netobj (int *,int *) ;
 int xdr_string (int *,int *,int ) ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_nlm_lock(XDR *xdrs, nlm_lock *objp)
{

 if (!xdr_string(xdrs, &objp->caller_name, LM_MAXSTRLEN))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->fh))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->oh))
  return (FALSE);
 if (!xdr_int(xdrs, &objp->svid))
  return (FALSE);
 if (!xdr_u_int(xdrs, &objp->l_offset))
  return (FALSE);
 if (!xdr_u_int(xdrs, &objp->l_len))
  return (FALSE);
 return (TRUE);
}
