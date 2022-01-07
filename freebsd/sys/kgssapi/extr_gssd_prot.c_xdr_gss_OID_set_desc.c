
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_int ;
struct TYPE_3__ {scalar_t__ elements; int count; } ;
typedef TYPE_1__ gss_OID_set_desc ;
typedef int gss_OID_desc ;
typedef scalar_t__ gss_OID ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_array (int *,scalar_t__*,int *,int ,int,int ) ;
 scalar_t__ xdr_gss_OID_desc ;

bool_t
xdr_gss_OID_set_desc(XDR *xdrs, gss_OID_set_desc *set)
{
 caddr_t addr;
 u_int len;

 len = set->count;
 addr = (caddr_t) set->elements;
 if (!xdr_array(xdrs, &addr, &len, ~0, sizeof(gss_OID_desc),
  (xdrproc_t) xdr_gss_OID_desc))
  return (FALSE);
 set->count = len;
 set->elements = (gss_OID) addr;

 return (TRUE);
}
