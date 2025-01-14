
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rebase_options {int use_legacy_rebase; void* reschedule_failed_exec; void* autostash; int * gpg_sign_opt; void* autosquash; int flags; } ;


 int REBASE_DIFFSTAT ;
 int free (int *) ;
 void* git_config_bool (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 int strcmp (char const*,char*) ;
 int * xstrdup (char*) ;

__attribute__((used)) static int rebase_config(const char *var, const char *value, void *data)
{
 struct rebase_options *opts = data;

 if (!strcmp(var, "rebase.stat")) {
  if (git_config_bool(var, value))
   opts->flags |= REBASE_DIFFSTAT;
  else
   opts->flags &= ~REBASE_DIFFSTAT;
  return 0;
 }

 if (!strcmp(var, "rebase.autosquash")) {
  opts->autosquash = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "commit.gpgsign")) {
  free(opts->gpg_sign_opt);
  opts->gpg_sign_opt = git_config_bool(var, value) ?
   xstrdup("-S") : ((void*)0);
  return 0;
 }

 if (!strcmp(var, "rebase.autostash")) {
  opts->autostash = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "rebase.reschedulefailedexec")) {
  opts->reschedule_failed_exec = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "rebase.usebuiltin")) {
  opts->use_legacy_rebase = !git_config_bool(var, value);
  return 0;
 }

 return git_default_config(var, value, data);
}
