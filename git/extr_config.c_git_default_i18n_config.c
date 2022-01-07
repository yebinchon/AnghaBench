
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_commit_encoding ;
 int git_config_string (int *,char const*,char const*) ;
 int git_log_output_encoding ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_default_i18n_config(const char *var, const char *value)
{
 if (!strcmp(var, "i18n.commitencoding"))
  return git_config_string(&git_commit_encoding, var, value);

 if (!strcmp(var, "i18n.logoutputencoding"))
  return git_config_string(&git_log_output_encoding, var, value);


 return 0;
}
