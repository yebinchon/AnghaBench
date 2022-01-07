
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIDE_DOTFILES_DOTGITONLY ;
 int free (int ) ;
 int git_config_bool (char const*,char const*) ;
 int hide_dotfiles ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int unset_environment_variables ;
 int xstrdup (char const*) ;

int mingw_core_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "core.hidedotfiles")) {
  if (value && !strcasecmp(value, "dotgitonly"))
   hide_dotfiles = HIDE_DOTFILES_DOTGITONLY;
  else
   hide_dotfiles = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "core.unsetenvvars")) {
  free(unset_environment_variables);
  unset_environment_variables = xstrdup(value);
  return 0;
 }

 return 0;
}
