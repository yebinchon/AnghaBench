
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rpc_gss_error; int system_error; } ;


 TYPE_1__ _rpc_gss_error ;

void
_rpc_gss_set_error(int rpc_gss_error, int system_error)
{

 _rpc_gss_error.rpc_gss_error = rpc_gss_error;
 _rpc_gss_error.system_error = system_error;
}
