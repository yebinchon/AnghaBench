
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
 int xdr_opaque (TYPE_1__*,char*,scalar_t__) ;
 int xdr_u_int (TYPE_1__*,scalar_t__*) ;

bool_t
xdr_bytes(XDR *xdrs, char **cpp, u_int *sizep, u_int maxsize)
{
 char *sp = *cpp;
 u_int nodesize;
 bool_t ret, allocated = FALSE;




 if (! xdr_u_int(xdrs, sizep)) {
  return (FALSE);
 }
 nodesize = *sizep;
 if ((nodesize > maxsize) && (xdrs->x_op != 128)) {
  return (FALSE);
 }




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
   printf("xdr_bytes: out of memory");
   return (FALSE);
  }


 case 129:
  ret = xdr_opaque(xdrs, sp, nodesize);
  if ((xdrs->x_op == 130) && (ret == FALSE)) {
   if (allocated == TRUE) {
    mem_free(sp, nodesize);
    *cpp = ((void*)0);
   }
  }
  return (ret);

 case 128:
  if (sp != ((void*)0)) {
   mem_free(sp, nodesize);
   *cpp = ((void*)0);
  }
  return (TRUE);
 }

 return (FALSE);
}
