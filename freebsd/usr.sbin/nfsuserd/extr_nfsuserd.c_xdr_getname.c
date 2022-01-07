
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {char* name; } ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 long MAXNAME ;
 int xdr_long (int *,long*) ;
 int xdr_opaque (int *,char*,long) ;

__attribute__((used)) static bool_t
xdr_getname(XDR *xdrsp, caddr_t cp)
{
 struct info *ifp = (struct info *)cp;
 long len;

 if (!xdr_long(xdrsp, &len))
  return (0);
 if (len > MAXNAME)
  return (0);
 if (!xdr_opaque(xdrsp, ifp->name, len))
  return (0);
 ifp->name[len] = '\0';
 return (1);
}
