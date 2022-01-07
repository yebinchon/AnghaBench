
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xdrproc_t ) (int *,char*) ;
typedef scalar_t__ u_int ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int stub1 (int *,char*) ;

bool_t
xdr_vector(XDR *xdrs, char *basep, u_int nelem, u_int elemsize,
    xdrproc_t xdr_elem)
{
 u_int i;
 char *elptr;

 elptr = basep;
 for (i = 0; i < nelem; i++) {
  if (!(*xdr_elem)(xdrs, elptr)) {
   return(FALSE);
  }
  elptr += elemsize;
 }
 return(TRUE);
}
