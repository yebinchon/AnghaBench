
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ (* xdrproc_t ) (TYPE_1__*,int *) ;
typedef int u_int ;
typedef int * caddr_t ;
typedef scalar_t__ bool_t ;
struct TYPE_7__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int UINT_MAX ;



 int * mem_alloc (int) ;
 int mem_free (int *,int) ;
 int memset (int *,int ,int) ;
 int printf (char*) ;
 scalar_t__ stub1 (TYPE_1__*,int *) ;
 int xdr_u_int (TYPE_1__*,int*) ;

bool_t
xdr_array(XDR *xdrs,
    caddr_t *addrp,
    u_int *sizep,
    u_int maxsize,
    u_int elsize,
    xdrproc_t elproc)
{
 u_int i;
 caddr_t target = *addrp;
 u_int c;
 bool_t stat = TRUE;
 u_int nodesize;


 if (!xdr_u_int(xdrs, sizep)) {
  return (FALSE);
 }
 c = *sizep;
 if ((c > maxsize || UINT_MAX/elsize < c) &&
     (xdrs->x_op != 128)) {
  return (FALSE);
 }
 nodesize = c * elsize;





 if (target == ((void*)0))
  switch (xdrs->x_op) {
  case 130:
   if (c == 0)
    return (TRUE);
   *addrp = target = mem_alloc(nodesize);
   if (target == ((void*)0)) {
    printf("xdr_array: out of memory");
    return (FALSE);
   }
   memset(target, 0, nodesize);
   break;

  case 128:
   return (TRUE);

  case 129:
   break;
 }




 for (i = 0; (i < c) && stat; i++) {
  stat = (*elproc)(xdrs, target);
  target += elsize;
 }




 if (xdrs->x_op == 128) {
  mem_free(*addrp, nodesize);
  *addrp = ((void*)0);
 }
 return (stat);
}
