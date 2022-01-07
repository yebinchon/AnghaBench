
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* xdrproc_t ) (TYPE_1__*,int *) ;
typedef int u_int ;
typedef int * caddr_t ;
typedef int bool_t ;
struct TYPE_6__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;



 int mem_alloc (int ) ;
 int mem_free (int *,int ) ;
 int memset (int *,int ,int ) ;
 int printf (char*) ;
 int stub1 (TYPE_1__*,int *) ;

bool_t
xdr_reference(XDR *xdrs,
    caddr_t *pp,
    u_int size,
    xdrproc_t proc)
{
 caddr_t loc = *pp;
 bool_t stat;

 if (loc == ((void*)0))
  switch (xdrs->x_op) {
  case 128:
   return (TRUE);

  case 130:
   *pp = loc = (caddr_t) mem_alloc(size);
   if (loc == ((void*)0)) {
    printf("xdr_reference: out of memory");
    return (FALSE);
   }
   memset(loc, 0, size);
   break;

  case 129:
   break;
  }

 stat = (*proc)(xdrs, loc);

 if (xdrs->x_op == 128) {
  mem_free(loc, size);
  *pp = ((void*)0);
 }
 return (stat);
}
