
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int dummy; } ;


 int cleanup_arg ;
 int config_commit_verbose ;
 scalar_t__ git_config_bool (char const*,char const*) ;
 int git_config_bool_or_int (char const*,char const*,int*) ;
 int git_config_pathname (int *,char const*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 int git_gpg_config (char const*,char const*,int *) ;
 int git_status_config (char const*,char const*,struct wt_status*) ;
 scalar_t__ include_status ;
 char* sign_commit ;
 int strcmp (char const*,char*) ;
 int template_file ;

__attribute__((used)) static int git_commit_config(const char *k, const char *v, void *cb)
{
 struct wt_status *s = cb;
 int status;

 if (!strcmp(k, "commit.template"))
  return git_config_pathname(&template_file, k, v);
 if (!strcmp(k, "commit.status")) {
  include_status = git_config_bool(k, v);
  return 0;
 }
 if (!strcmp(k, "commit.cleanup"))
  return git_config_string(&cleanup_arg, k, v);
 if (!strcmp(k, "commit.gpgsign")) {
  sign_commit = git_config_bool(k, v) ? "" : ((void*)0);
  return 0;
 }
 if (!strcmp(k, "commit.verbose")) {
  int is_bool;
  config_commit_verbose = git_config_bool_or_int(k, v, &is_bool);
  return 0;
 }

 status = git_gpg_config(k, v, ((void*)0));
 if (status)
  return status;
 return git_status_config(k, v, s);
}
