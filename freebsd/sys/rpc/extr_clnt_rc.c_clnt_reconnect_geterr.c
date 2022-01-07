
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_err {int dummy; } ;
struct rc_data {struct rpc_err rc_err; } ;
struct TYPE_3__ {scalar_t__ cl_private; } ;
typedef TYPE_1__ CLIENT ;



__attribute__((used)) static void
clnt_reconnect_geterr(CLIENT *cl, struct rpc_err *errp)
{
 struct rc_data *rc = (struct rc_data *)cl->cl_private;

 *errp = rc->rc_err;
}
