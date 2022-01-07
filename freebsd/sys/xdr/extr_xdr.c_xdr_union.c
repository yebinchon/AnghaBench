
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xdrproc_t ) (int *,char*) ;
struct xdr_discrim {scalar_t__ value; int (* proc ) (int *,char*) ;} ;
typedef scalar_t__ enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NULL_xdrproc_t (int *,char*) ;
 int stub1 (int *,char*) ;
 int stub2 (int *,char*) ;
 int xdr_enum (int *,scalar_t__*) ;

bool_t
xdr_union(XDR *xdrs,
    enum_t *dscmp,
    char *unp,
    const struct xdr_discrim *choices,
    xdrproc_t dfault)
{
 enum_t dscm;




 if (! xdr_enum(xdrs, dscmp)) {
  return (FALSE);
 }
 dscm = *dscmp;





 for (; choices->proc != NULL_xdrproc_t; choices++) {
  if (choices->value == dscm)
   return ((*(choices->proc))(xdrs, unp));
 }




 return ((dfault == NULL_xdrproc_t) ? FALSE :
     (*dfault)(xdrs, unp));
}
