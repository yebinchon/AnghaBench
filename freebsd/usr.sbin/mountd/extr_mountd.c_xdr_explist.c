
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;
typedef int XDR ;


 int xdr_explist_common (int *,int ,int ) ;

__attribute__((used)) static int
xdr_explist(XDR *xdrsp, caddr_t cp)
{

 return xdr_explist_common(xdrsp, cp, 0);
}
