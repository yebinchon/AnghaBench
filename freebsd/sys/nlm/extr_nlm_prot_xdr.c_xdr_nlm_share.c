
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int access; int mode; int oh; int fh; int caller_name; } ;
typedef TYPE_1__ nlm_share ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int LM_MAXSTRLEN ;
 int TRUE ;
 int xdr_fsh_access (int *,int *) ;
 int xdr_fsh_mode (int *,int *) ;
 int xdr_netobj (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_nlm_share(XDR *xdrs, nlm_share *objp)
{

 if (!xdr_string(xdrs, &objp->caller_name, LM_MAXSTRLEN))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->fh))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->oh))
  return (FALSE);
 if (!xdr_fsh_mode(xdrs, &objp->mode))
  return (FALSE);
 if (!xdr_fsh_access(xdrs, &objp->access))
  return (FALSE);
 return (TRUE);
}
