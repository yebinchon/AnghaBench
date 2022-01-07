
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_ALLOW ;
 int FF_NO ;
 int FF_ONLY ;
 char* branch ;
 int branch_mergeoptions ;
 int cleanup_arg ;
 void* default_to_upstream ;
 int fast_forward ;
 int fmt_merge_msg_config (char const*,char const*,void*) ;
 int free (int ) ;
 void* git_config_bool (char const*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 int git_diff_ui_config (char const*,char const*,void*) ;
 int git_gpg_config (char const*,char const*,int *) ;
 int git_parse_maybe_bool (char const*) ;
 void* option_renormalize ;
 int pull_octopus ;
 int pull_twohead ;
 void* show_diffstat ;
 char* sign_commit ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strlen (char*) ;
 void* verify_signatures ;
 int xstrdup (char const*) ;

__attribute__((used)) static int git_merge_config(const char *k, const char *v, void *cb)
{
 int status;

 if (branch && starts_with(k, "branch.") &&
  starts_with(k + 7, branch) &&
  !strcmp(k + 7 + strlen(branch), ".mergeoptions")) {
  free(branch_mergeoptions);
  branch_mergeoptions = xstrdup(v);
  return 0;
 }

 if (!strcmp(k, "merge.diffstat") || !strcmp(k, "merge.stat"))
  show_diffstat = git_config_bool(k, v);
 else if (!strcmp(k, "merge.verifysignatures"))
  verify_signatures = git_config_bool(k, v);
 else if (!strcmp(k, "pull.twohead"))
  return git_config_string(&pull_twohead, k, v);
 else if (!strcmp(k, "pull.octopus"))
  return git_config_string(&pull_octopus, k, v);
 else if (!strcmp(k, "commit.cleanup"))
  return git_config_string(&cleanup_arg, k, v);
 else if (!strcmp(k, "merge.renormalize"))
  option_renormalize = git_config_bool(k, v);
 else if (!strcmp(k, "merge.ff")) {
  int boolval = git_parse_maybe_bool(v);
  if (0 <= boolval) {
   fast_forward = boolval ? FF_ALLOW : FF_NO;
  } else if (v && !strcmp(v, "only")) {
   fast_forward = FF_ONLY;
  }
  return 0;
 } else if (!strcmp(k, "merge.defaulttoupstream")) {
  default_to_upstream = git_config_bool(k, v);
  return 0;
 } else if (!strcmp(k, "commit.gpgsign")) {
  sign_commit = git_config_bool(k, v) ? "" : ((void*)0);
  return 0;
 }

 status = fmt_merge_msg_config(k, v, cb);
 if (status)
  return status;
 status = git_gpg_config(k, v, ((void*)0));
 if (status)
  return status;
 return git_diff_ui_config(k, v, cb);
}
