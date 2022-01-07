
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ GSS_C_QOP_DEFAULT ;

const char *
_rpc_gss_num_to_qop(const char *mech, u_int num)
{

 if (num == GSS_C_QOP_DEFAULT)
  return "default";

 return (((void*)0));
}
