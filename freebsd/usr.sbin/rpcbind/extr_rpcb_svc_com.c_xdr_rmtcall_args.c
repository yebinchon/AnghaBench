
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_rmtcall_args {int rmt_args; int rmt_proc; int rmt_vers; int rmt_prog; } ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_encap_parms (int *,int *) ;
 scalar_t__ xdr_rpcproc (int *,int *) ;
 scalar_t__ xdr_rpcprog (int *,int *) ;
 scalar_t__ xdr_rpcvers (int *,int *) ;

__attribute__((used)) static bool_t
xdr_rmtcall_args(XDR *xdrs, struct r_rmtcall_args *cap)
{

 if (xdr_rpcprog(xdrs, &(cap->rmt_prog)) &&
     xdr_rpcvers(xdrs, &(cap->rmt_vers)) &&
     xdr_rpcproc(xdrs, &(cap->rmt_proc))) {
  return (xdr_encap_parms(xdrs, &(cap->rmt_args)));
 }
 return (FALSE);
}
