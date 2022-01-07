
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_2__ {int rpc_gss_svc_max_data_length; int rpc_gss_get_principal_name; int rpc_gss_clear_callback; int rpc_gss_set_callback; int rpc_gss_getcred; int rpc_gss_clear_svc_name; int rpc_gss_set_svc_name; int rpc_gss_is_installed; int rpc_gss_get_versions; int rpc_gss_get_mechanisms; int rpc_gss_qop_to_num; int rpc_gss_oid_to_mech; int rpc_gss_mech_to_oid; int rpc_gss_get_error; int rpc_gss_max_data_length; int rpc_gss_set_defaults; int rpc_gss_seccreate; int rpc_gss_secpurge; int rpc_gss_secfind; int rpc_gss_refresh_auth; } ;


 int EOPNOTSUPP ;


 int MTX_DEF ;
 int kgss_gssd_lock ;
 int kgss_load () ;
 int kgss_unload () ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rpc_gss_clear_callback ;
 int rpc_gss_clear_svc_name ;
 TYPE_1__ rpc_gss_entries ;
 int rpc_gss_get_error ;
 int rpc_gss_get_mechanisms ;
 int rpc_gss_get_principal_name ;
 int rpc_gss_get_versions ;
 int rpc_gss_getcred ;
 int rpc_gss_is_installed ;
 int rpc_gss_max_data_length ;
 int rpc_gss_mech_to_oid ;
 int rpc_gss_oid_to_mech ;
 int rpc_gss_qop_to_num ;
 int rpc_gss_refresh_auth ;
 int rpc_gss_seccreate ;
 int rpc_gss_secfind ;
 int rpc_gss_secpurge ;
 int rpc_gss_set_callback ;
 int rpc_gss_set_defaults ;
 int rpc_gss_set_svc_name ;
 int rpc_gss_svc_max_data_length ;

__attribute__((used)) static int
kgssapi_modevent(module_t mod, int type, void *data)
{
 int error = 0;

 switch (type) {
 case 129:
  rpc_gss_entries.rpc_gss_refresh_auth = rpc_gss_refresh_auth;
  rpc_gss_entries.rpc_gss_secfind = rpc_gss_secfind;
  rpc_gss_entries.rpc_gss_secpurge = rpc_gss_secpurge;
  rpc_gss_entries.rpc_gss_seccreate = rpc_gss_seccreate;
  rpc_gss_entries.rpc_gss_set_defaults = rpc_gss_set_defaults;
  rpc_gss_entries.rpc_gss_max_data_length =
      rpc_gss_max_data_length;
  rpc_gss_entries.rpc_gss_get_error = rpc_gss_get_error;
  rpc_gss_entries.rpc_gss_mech_to_oid = rpc_gss_mech_to_oid;
  rpc_gss_entries.rpc_gss_oid_to_mech = rpc_gss_oid_to_mech;
  rpc_gss_entries.rpc_gss_qop_to_num = rpc_gss_qop_to_num;
  rpc_gss_entries.rpc_gss_get_mechanisms = rpc_gss_get_mechanisms;
  rpc_gss_entries.rpc_gss_get_versions = rpc_gss_get_versions;
  rpc_gss_entries.rpc_gss_is_installed = rpc_gss_is_installed;
  rpc_gss_entries.rpc_gss_set_svc_name = rpc_gss_set_svc_name;
  rpc_gss_entries.rpc_gss_clear_svc_name = rpc_gss_clear_svc_name;
  rpc_gss_entries.rpc_gss_getcred = rpc_gss_getcred;
  rpc_gss_entries.rpc_gss_set_callback = rpc_gss_set_callback;
  rpc_gss_entries.rpc_gss_clear_callback = rpc_gss_clear_callback;
  rpc_gss_entries.rpc_gss_get_principal_name =
      rpc_gss_get_principal_name;
  rpc_gss_entries.rpc_gss_svc_max_data_length =
      rpc_gss_svc_max_data_length;
  mtx_init(&kgss_gssd_lock, "kgss_gssd_lock", ((void*)0), MTX_DEF);
  error = kgss_load();
  break;
 case 128:
  kgss_unload();
  mtx_destroy(&kgss_gssd_lock);






 default:
  error = EOPNOTSUPP;
 }
 return (error);
}
