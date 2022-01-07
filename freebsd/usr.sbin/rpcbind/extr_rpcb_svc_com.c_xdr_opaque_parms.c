
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arglen; int args; } ;
struct r_rmtcall_args {TYPE_1__ rmt_args; } ;
typedef int bool_t ;
typedef int XDR ;


 int xdr_opaque (int *,int ,int ) ;

__attribute__((used)) static bool_t
xdr_opaque_parms(XDR *xdrs, struct r_rmtcall_args *cap)
{
 return (xdr_opaque(xdrs, cap->rmt_args.args, cap->rmt_args.arglen));
}
