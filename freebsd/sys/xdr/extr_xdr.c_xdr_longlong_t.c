
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int longlong_t ;
typedef int int64_t ;
typedef int bool_t ;
typedef int XDR ;


 int xdr_int64_t (int *,int *) ;

bool_t
xdr_longlong_t(XDR *xdrs, longlong_t *llp)
{





 return (xdr_int64_t(xdrs, (int64_t *)llp));
}
