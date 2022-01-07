
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {scalar_t__ pw_name; } ;
typedef int gss_name_t ;
typedef int gss_cred_id_t ;
struct TYPE_3__ {int length; void* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int gss_OID_set ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_INITIATE ;
 int GSS_C_NT_USER_NAME ;
 int GSS_KRB5_MECH_OID_X ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 struct passwd* getpwuid (int ) ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,int ,int ,int *,int *,int *) ;
 scalar_t__ gss_add_oid_set_member (scalar_t__*,int ,int *) ;
 scalar_t__ gss_create_empty_oid_set (scalar_t__*,int *) ;
 scalar_t__ gss_import_name (scalar_t__*,TYPE_1__*,int ,int *) ;
 int gss_release_name (scalar_t__*,int *) ;
 int gss_release_oid_set (scalar_t__*,int *) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static OM_uint32
gssd_get_user_cred(OM_uint32 *min_statp, uid_t uid, gss_cred_id_t *credp)
{
 gss_buffer_desc principal_desc;
 gss_name_t name;
 OM_uint32 maj_stat, min_stat;
 gss_OID_set mechlist;
 struct passwd *pw;

 pw = getpwuid(uid);
 if (pw == ((void*)0)) {
  *min_statp = 0;
  return (GSS_S_FAILURE);
 }





 maj_stat = gss_create_empty_oid_set(min_statp, &mechlist);
 if (maj_stat != GSS_S_COMPLETE)
  return (maj_stat);
 maj_stat = gss_add_oid_set_member(min_statp, GSS_KRB5_MECH_OID_X,
     &mechlist);
 if (maj_stat != GSS_S_COMPLETE) {
  gss_release_oid_set(&min_stat, &mechlist);
  return (maj_stat);
 }

 principal_desc.value = (void *)pw->pw_name;
 principal_desc.length = strlen(pw->pw_name);
 maj_stat = gss_import_name(min_statp, &principal_desc,
     GSS_C_NT_USER_NAME, &name);
 if (maj_stat != GSS_S_COMPLETE) {
  gss_release_oid_set(&min_stat, &mechlist);
  return (maj_stat);
 }

 maj_stat = gss_acquire_cred(min_statp, name, 0, mechlist,
     GSS_C_INITIATE, credp, ((void*)0), ((void*)0));
 gss_release_name(&min_stat, &name);
 gss_release_oid_set(&min_stat, &mechlist);
 return (maj_stat);
}
