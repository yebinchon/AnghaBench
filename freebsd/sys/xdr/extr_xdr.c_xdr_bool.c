
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;


 long XDR_FALSE ;

 int XDR_GETLONG (TYPE_1__*,long*) ;
 int XDR_PUTLONG (TYPE_1__*,long*) ;
 long XDR_TRUE ;

bool_t
xdr_bool(XDR *xdrs, bool_t *bp)
{
 long lb;

 switch (xdrs->x_op) {

 case 129:
  lb = *bp ? XDR_TRUE : XDR_FALSE;
  return (XDR_PUTLONG(xdrs, &lb));

 case 130:
  if (!XDR_GETLONG(xdrs, &lb)) {
   return (FALSE);
  }
  *bp = (lb == XDR_FALSE) ? FALSE : TRUE;
  return (TRUE);

 case 128:
  return (TRUE);
 }

 return (FALSE);
}
