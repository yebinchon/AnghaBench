
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;
typedef TYPE_1__ nlm4_lock ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAXNAMELEN ;
 int TRUE ;
 int xdr_netobj (int *,int *) ;
 int xdr_string (int *,int *,int ) ;
 int xdr_uint32_t (int *,int *) ;
 int xdr_uint64_t (int *,int *) ;

bool_t
xdr_nlm4_lock(XDR *xdrs, nlm4_lock *objp)
{

 if (!xdr_string(xdrs, &objp->caller_name, MAXNAMELEN))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->fh))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->oh))
  return (FALSE);
 if (!xdr_uint32_t(xdrs, &objp->svid))
  return (FALSE);
 if (!xdr_uint64_t(xdrs, &objp->l_offset))
  return (FALSE);
 if (!xdr_uint64_t(xdrs, &objp->l_len))
  return (FALSE);
 return (TRUE);
}
