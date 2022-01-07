
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct encap_parms {int arglen; int args; } ;
typedef int bool_t ;
typedef int XDR ;


 int RPC_MAXDATASIZE ;
 int xdr_bytes (int *,int *,int *,int ) ;

__attribute__((used)) static bool_t
xdr_encap_parms(XDR *xdrs, struct encap_parms *epp)
{
 return (xdr_bytes(xdrs, &(epp->args), (u_int *) &(epp->arglen),
     RPC_MAXDATASIZE));
}
