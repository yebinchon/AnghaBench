
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTOREBASE_ALWAYS ;
 int AUTOREBASE_LOCAL ;
 int AUTOREBASE_NEVER ;
 int AUTOREBASE_REMOTE ;
 int BRANCH_TRACK_ALWAYS ;
 int _ (char*) ;
 int autorebase ;
 int config_error_nonbool (char const*) ;
 int error (int ,char const*) ;
 int git_branch_track ;
 int git_config_bool (char const*,char const*) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_default_branch_config(const char *var, const char *value)
{
 if (!strcmp(var, "branch.autosetupmerge")) {
  if (value && !strcasecmp(value, "always")) {
   git_branch_track = BRANCH_TRACK_ALWAYS;
   return 0;
  }
  git_branch_track = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "branch.autosetuprebase")) {
  if (!value)
   return config_error_nonbool(var);
  else if (!strcmp(value, "never"))
   autorebase = AUTOREBASE_NEVER;
  else if (!strcmp(value, "local"))
   autorebase = AUTOREBASE_LOCAL;
  else if (!strcmp(value, "remote"))
   autorebase = AUTOREBASE_REMOTE;
  else if (!strcmp(value, "always"))
   autorebase = AUTOREBASE_ALWAYS;
  else
   return error(_("malformed value for %s"), var);
  return 0;
 }


 return 0;
}
