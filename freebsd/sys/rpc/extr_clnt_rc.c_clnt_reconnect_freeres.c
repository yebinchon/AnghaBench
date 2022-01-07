
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct rc_data {int rc_client; } ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ cl_private; } ;
typedef TYPE_1__ CLIENT ;


 int CLNT_FREERES (int ,int ,void*) ;

__attribute__((used)) static bool_t
clnt_reconnect_freeres(CLIENT *cl, xdrproc_t xdr_res, void *res_ptr)
{
 struct rc_data *rc = (struct rc_data *)cl->cl_private;

 return (CLNT_FREERES(rc->rc_client, xdr_res, res_ptr));
}
