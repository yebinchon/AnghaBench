
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_longlong_t ;
typedef int bool_t ;
typedef int XDR ;


 int xdr_uint64_t (int *,int *) ;

bool_t
xdr_u_hyper(XDR *xdrs, u_longlong_t *ullp)
{





 return (xdr_uint64_t(xdrs, (uint64_t *)ullp));
}
