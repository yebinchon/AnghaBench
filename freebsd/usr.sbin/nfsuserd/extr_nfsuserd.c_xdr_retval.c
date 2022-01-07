
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {long retval; } ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 int xdr_long (int *,long*) ;

__attribute__((used)) static bool_t
xdr_retval(XDR *xdrsp, caddr_t cp)
{
 struct info *ifp = (struct info *)cp;
 long val;

 val = ifp->retval;
 return (xdr_long(xdrsp, &val));
}
