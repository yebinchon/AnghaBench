
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int id; } ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 int xdr_long (int *,int *) ;

__attribute__((used)) static bool_t
xdr_getid(XDR *xdrsp, caddr_t cp)
{
 struct info *ifp = (struct info *)cp;

 return (xdr_long(xdrsp, &ifp->id));
}
