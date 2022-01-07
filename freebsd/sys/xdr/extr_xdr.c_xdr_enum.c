
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enum_t ;
typedef enum sizecheck { ____Placeholder_sizecheck } sizecheck ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_int (int *,int*) ;
 int xdr_long (int *,long*) ;
 int xdr_short (int *,short*) ;

bool_t
xdr_enum(XDR *xdrs, enum_t *ep)
{
 enum sizecheck { SIZEVAL };




              if (sizeof (enum sizecheck) == sizeof (long)) {
  return (xdr_long(xdrs, (long *)(void *)ep));
 } else if (sizeof (enum sizecheck) == sizeof (int)) {
  return (xdr_int(xdrs, (int *)(void *)ep));
 } else if (sizeof (enum sizecheck) == sizeof (short)) {
  return (xdr_short(xdrs, (short *)(void *)ep));
 } else {
  return (FALSE);
 }
}
