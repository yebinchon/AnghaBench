
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_err {int dummy; } ;
struct ct_data {struct rpc_err ct_error; } ;
struct TYPE_3__ {scalar_t__ cl_private; } ;
typedef TYPE_1__ CLIENT ;



__attribute__((used)) static void
clnt_vc_geterr(CLIENT *cl, struct rpc_err *errp)
{
 struct ct_data *ct = (struct ct_data *) cl->cl_private;

 *errp = ct->ct_error;
}
