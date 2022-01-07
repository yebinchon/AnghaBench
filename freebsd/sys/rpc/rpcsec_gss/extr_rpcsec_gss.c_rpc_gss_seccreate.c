
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ucred {int dummy; } ;
typedef int rpc_gss_service_t ;
typedef int rpc_gss_options_ret_t ;
typedef int rpc_gss_options_req_t ;
typedef int gss_OID ;
typedef int CLIENT ;
typedef int AUTH ;


 int GSS_C_QOP_DEFAULT ;
 int rpc_gss_mech_to_oid (char const*,int *) ;
 int rpc_gss_qop_to_num (char const*,char const*,int *) ;
 int * rpc_gss_seccreate_int (int *,struct ucred*,char const*,char const*,int ,int ,int ,int *,int *) ;

AUTH *
rpc_gss_seccreate(CLIENT *clnt, struct ucred *cred, const char *clnt_principal,
    const char *principal, const char *mechanism, rpc_gss_service_t service,
    const char *qop, rpc_gss_options_req_t *options_req,
    rpc_gss_options_ret_t *options_ret)
{
 gss_OID oid;
 u_int qop_num;




 if (!rpc_gss_mech_to_oid(mechanism, &oid))
  return (((void*)0));

 if (qop) {
  if (!rpc_gss_qop_to_num(qop, mechanism, &qop_num))
   return (((void*)0));
 } else {
  qop_num = GSS_C_QOP_DEFAULT;
 }

 return (rpc_gss_seccreate_int(clnt, cred, clnt_principal, principal,
  oid, service, qop_num, options_req, options_ret));
}
