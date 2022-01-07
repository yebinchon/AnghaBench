
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct r_rmtcall_args {scalar_t__ rmt_localvers; int rmt_args; int rmt_uaddr; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 scalar_t__ FALSE ;
 scalar_t__ PMAPVERS ;
 scalar_t__ RPCBVERS ;
 scalar_t__ RPCBVERS4 ;
 scalar_t__ TRUE ;
 int sscanf (int ,char*,int*,int*,int*,int*,int*,int*) ;
 scalar_t__ xdr_encap_parms (int *,int *) ;
 scalar_t__ xdr_u_long (int *,int*) ;
 scalar_t__ xdr_wrapstring (int *,int *) ;

__attribute__((used)) static bool_t
xdr_rmtcall_result(XDR *xdrs, struct r_rmtcall_args *cap)
{
 bool_t result;
  if ((cap->rmt_localvers == RPCBVERS) ||
      (cap->rmt_localvers == RPCBVERS4)) {
  result = xdr_wrapstring(xdrs, &(cap->rmt_uaddr));
 } else {
  return (FALSE);
 }
 if (result == TRUE)
  return (xdr_encap_parms(xdrs, &(cap->rmt_args)));
 return (FALSE);
}
