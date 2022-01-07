
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fhreturn {int fhr_vers; int fhr_numsecflavors; int* fhr_secflavors; int fhr_fh; } ;
typedef scalar_t__ caddr_t ;
typedef int XDR ;


 int AUTH_SYS ;
 int NFSX_V2FH ;
 int NFSX_V3FH ;
 int xdr_int (int *,int*) ;
 int xdr_long (int *,int*) ;
 int xdr_opaque (int *,scalar_t__,int) ;

__attribute__((used)) static int
xdr_fhs(XDR *xdrsp, caddr_t cp)
{
 struct fhreturn *fhrp = (struct fhreturn *)cp;
 u_long ok = 0, len, auth;
 int i;

 if (!xdr_long(xdrsp, &ok))
  return (0);
 switch (fhrp->fhr_vers) {
 case 1:
  return (xdr_opaque(xdrsp, (caddr_t)&fhrp->fhr_fh, NFSX_V2FH));
 case 3:
  len = NFSX_V3FH;
  if (!xdr_long(xdrsp, &len))
   return (0);
  if (!xdr_opaque(xdrsp, (caddr_t)&fhrp->fhr_fh, len))
   return (0);
  if (fhrp->fhr_numsecflavors) {
   if (!xdr_int(xdrsp, &fhrp->fhr_numsecflavors))
    return (0);
   for (i = 0; i < fhrp->fhr_numsecflavors; i++)
    if (!xdr_int(xdrsp, &fhrp->fhr_secflavors[i]))
     return (0);
   return (1);
  } else {
   auth = AUTH_SYS;
   len = 1;
   if (!xdr_long(xdrsp, &len))
    return (0);
   return (xdr_long(xdrsp, &auth));
  }
 }
 return (0);
}
