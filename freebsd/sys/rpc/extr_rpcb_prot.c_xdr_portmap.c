
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portmap {int pm_port; int pm_prot; int pm_vers; int pm_prog; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 scalar_t__ FALSE ;
 scalar_t__ xdr_u_long (int *,int *) ;

bool_t
xdr_portmap(XDR *xdrs, struct portmap *regs)
{

 if (xdr_u_long(xdrs, &regs->pm_prog) &&
  xdr_u_long(xdrs, &regs->pm_vers) &&
  xdr_u_long(xdrs, &regs->pm_prot))
  return (xdr_u_long(xdrs, &regs->pm_port));
 return (FALSE);
}
