
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;



 char* mem_alloc (scalar_t__) ;
 int mem_free (char*,scalar_t__) ;
 int printf (char*) ;
 scalar_t__ strlen (char*) ;
 int xdr_opaque (TYPE_1__*,char*,scalar_t__) ;
 int xdr_u_int (TYPE_1__*,scalar_t__*) ;

bool_t
xdr_string(XDR *xdrs, char **cpp, u_int maxsize)
{
 char *sp = *cpp;
 u_int size;
 u_int nodesize;
 bool_t ret, allocated = FALSE;




 switch (xdrs->x_op) {
 case 128:
  if (sp == ((void*)0)) {
   return(TRUE);
  }

 case 129:
  size = strlen(sp);
  break;
 case 130:
  break;
 }
 if (! xdr_u_int(xdrs, &size)) {
  return (FALSE);
 }
 if (size > maxsize) {
  return (FALSE);
 }
 nodesize = size + 1;




 switch (xdrs->x_op) {

 case 130:
  if (nodesize == 0) {
   return (TRUE);
  }
  if (sp == ((void*)0)) {
   *cpp = sp = mem_alloc(nodesize);
   allocated = TRUE;
  }
  if (sp == ((void*)0)) {
   printf("xdr_string: out of memory");
   return (FALSE);
  }
  sp[size] = 0;


 case 129:
  ret = xdr_opaque(xdrs, sp, size);
  if ((xdrs->x_op == 130) && (ret == FALSE)) {
   if (allocated == TRUE) {
    mem_free(sp, nodesize);
    *cpp = ((void*)0);
   }
  }
  return (ret);

 case 128:
  mem_free(sp, nodesize);
  *cpp = ((void*)0);
  return (TRUE);
 }

 return (FALSE);
}
