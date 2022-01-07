
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nlm_stats ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_enum (int *,int *) ;

bool_t
xdr_nlm_stats(XDR *xdrs, nlm_stats *objp)
{

 if (!xdr_enum(xdrs, (enum_t *)objp))
  return (FALSE);
 return (TRUE);
}
