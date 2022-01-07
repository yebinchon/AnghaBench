
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct svc_rpc_gss_svc_name {int sn_principal; void* sn_version; void* sn_program; int sn_cred; void* sn_req_time; int sn_mech; } ;
typedef int gss_OID ;
typedef int bool_t ;


 int FALSE ;
 int GSS_C_NO_CREDENTIAL ;
 int M_RPC ;
 int SLIST_INSERT_HEAD (int *,struct svc_rpc_gss_svc_name*,int ) ;
 int TRUE ;
 int free (int ,int ) ;
 struct svc_rpc_gss_svc_name* mem_alloc (int) ;
 int mem_free (struct svc_rpc_gss_svc_name*,int) ;
 int rpc_gss_acquire_svc_cred (struct svc_rpc_gss_svc_name*) ;
 int rpc_gss_mech_to_oid (char const*,int *) ;
 int sn_link ;
 int strdup (char const*,int ) ;
 int svc_rpc_gss_lock ;
 int svc_rpc_gss_svc_names ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

bool_t
rpc_gss_set_svc_name(const char *principal, const char *mechanism,
    u_int req_time, u_int program, u_int version)
{
 struct svc_rpc_gss_svc_name *sname;
 gss_OID mech_oid;

 if (!rpc_gss_mech_to_oid(mechanism, &mech_oid))
  return (FALSE);

 sname = mem_alloc(sizeof(*sname));
 if (!sname)
  return (FALSE);
 sname->sn_principal = strdup(principal, M_RPC);
 sname->sn_mech = mech_oid;
 sname->sn_req_time = req_time;
 sname->sn_cred = GSS_C_NO_CREDENTIAL;
 sname->sn_program = program;
 sname->sn_version = version;

 if (!rpc_gss_acquire_svc_cred(sname)) {
  free(sname->sn_principal, M_RPC);
  mem_free(sname, sizeof(*sname));
  return (FALSE);
 }

 sx_xlock(&svc_rpc_gss_lock);
 SLIST_INSERT_HEAD(&svc_rpc_gss_svc_names, sname, sn_link);
 sx_xunlock(&svc_rpc_gss_lock);

 return (TRUE);
}
