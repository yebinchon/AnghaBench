
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netobj {int n_len; int n_bytes; } ;
typedef int bool_t ;
typedef int XDR ;


 int MAX_NETOBJ_SZ ;
 int xdr_bytes (int *,int *,int *,int ) ;

bool_t
xdr_netobj(XDR *xdrs, struct netobj *np)
{

 return (xdr_bytes(xdrs, &np->n_bytes, &np->n_len, MAX_NETOBJ_SZ));
}
