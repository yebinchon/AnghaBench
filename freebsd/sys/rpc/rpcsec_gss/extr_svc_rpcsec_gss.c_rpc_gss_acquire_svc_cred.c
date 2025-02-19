
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_rpc_gss_svc_name {int sn_cred; int sn_req_time; scalar_t__ sn_principal; int sn_mech; } ;
typedef int gss_name_t ;
struct TYPE_5__ {int length; void* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
struct TYPE_6__ {int count; int elements; } ;
typedef TYPE_2__ gss_OID_set_desc ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 int GSS_C_ACCEPT ;
 int GSS_C_NO_CREDENTIAL ;
 int GSS_C_NT_HOSTBASED_SERVICE ;
 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ gss_import_name (scalar_t__*,TYPE_1__*,int ,int *) ;
 int gss_release_cred (scalar_t__*,int *) ;
 int gss_release_name (scalar_t__*,int *) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static bool_t
rpc_gss_acquire_svc_cred(struct svc_rpc_gss_svc_name *sname)
{
 OM_uint32 maj_stat, min_stat;
 gss_buffer_desc namebuf;
 gss_name_t name;
 gss_OID_set_desc oid_set;

 oid_set.count = 1;
 oid_set.elements = sname->sn_mech;

 namebuf.value = (void *) sname->sn_principal;
 namebuf.length = strlen(sname->sn_principal);

 maj_stat = gss_import_name(&min_stat, &namebuf,
       GSS_C_NT_HOSTBASED_SERVICE, &name);
 if (maj_stat != GSS_S_COMPLETE)
  return (FALSE);

 if (sname->sn_cred != GSS_C_NO_CREDENTIAL)
  gss_release_cred(&min_stat, &sname->sn_cred);

 maj_stat = gss_acquire_cred(&min_stat, name,
     sname->sn_req_time, &oid_set, GSS_C_ACCEPT, &sname->sn_cred,
     ((void*)0), ((void*)0));
 if (maj_stat != GSS_S_COMPLETE) {
  gss_release_name(&min_stat, &name);
  return (FALSE);
 }
 gss_release_name(&min_stat, &name);

 return (TRUE);
}
