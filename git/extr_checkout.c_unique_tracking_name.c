
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracking_name_data {char const* default_remote; char* src_ref; int num_matches; char* default_dst_ref; char* default_dst_oid; char const* dst_ref; struct object_id* dst_oid; } ;
struct object_id {int dummy; } ;


 struct tracking_name_data TRACKING_NAME_DATA_INIT ;
 int check_tracking_name ;
 int for_each_remote (int ,struct tracking_name_data*) ;
 int free (char*) ;
 int git_config_get_string_const (char*,char const**) ;
 int oidcpy (struct object_id*,char*) ;
 char* xstrfmt (char*,char const*) ;

const char *unique_tracking_name(const char *name, struct object_id *oid,
     int *dwim_remotes_matched)
{
 struct tracking_name_data cb_data = TRACKING_NAME_DATA_INIT;
 const char *default_remote = ((void*)0);
 if (!git_config_get_string_const("checkout.defaultremote", &default_remote))
  cb_data.default_remote = default_remote;
 cb_data.src_ref = xstrfmt("refs/heads/%s", name);
 cb_data.dst_oid = oid;
 for_each_remote(check_tracking_name, &cb_data);
 if (dwim_remotes_matched)
  *dwim_remotes_matched = cb_data.num_matches;
 free(cb_data.src_ref);
 free((char *)default_remote);
 if (cb_data.num_matches == 1) {
  free(cb_data.default_dst_ref);
  free(cb_data.default_dst_oid);
  return cb_data.dst_ref;
 }
 free(cb_data.dst_ref);
 if (cb_data.default_dst_ref) {
  oidcpy(oid, cb_data.default_dst_oid);
  free(cb_data.default_dst_oid);
  return cb_data.default_dst_ref;
 }
 return ((void*)0);
}
