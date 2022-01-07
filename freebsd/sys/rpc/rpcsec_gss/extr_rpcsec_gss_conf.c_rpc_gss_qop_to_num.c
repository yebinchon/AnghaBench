
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int bool_t ;


 int ENOENT ;
 int FALSE ;
 int GSS_C_QOP_DEFAULT ;
 int RPC_GSS_ER_SYSTEMERROR ;
 int TRUE ;
 int _rpc_gss_set_error (int ,int ) ;
 int strcmp (char const*,char*) ;

bool_t
rpc_gss_qop_to_num(const char *qop, const char *mech, u_int *num_ret)
{

 if (!strcmp(qop, "default")) {
  *num_ret = GSS_C_QOP_DEFAULT;
  return (TRUE);
 }
 _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOENT);
 return (FALSE);
}
