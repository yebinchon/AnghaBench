
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {char* elements; int length; } ;
typedef TYPE_1__ gss_OID_desc ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_bytes (int *,char**,int *,int ) ;

bool_t
xdr_gss_OID_desc(XDR *xdrs, gss_OID_desc *oid)
{
 char *val;
 u_int len;

 len = oid->length;
 val = oid->elements;
 if (!xdr_bytes(xdrs, &val, &len, ~0))
  return (FALSE);
 oid->length = len;
 oid->elements = val;

 return (TRUE);
}
