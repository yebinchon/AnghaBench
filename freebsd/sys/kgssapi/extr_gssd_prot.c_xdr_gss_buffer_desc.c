
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {char* value; int length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_bytes (int *,char**,int *,int ) ;

bool_t
xdr_gss_buffer_desc(XDR *xdrs, gss_buffer_desc *buf)
{
 char *val;
 u_int len;

 len = buf->length;
 val = buf->value;
 if (!xdr_bytes(xdrs, &val, &len, ~0))
  return (FALSE);
 buf->length = len;
 buf->value = val;

 return (TRUE);
}
