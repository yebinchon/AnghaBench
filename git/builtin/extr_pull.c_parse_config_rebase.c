
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rebase_type { ____Placeholder_rebase_type } rebase_type ;


 int REBASE_FALSE ;
 int REBASE_INTERACTIVE ;
 int REBASE_INVALID ;
 int REBASE_MERGES ;
 int REBASE_PRESERVE ;
 int REBASE_TRUE ;
 int _ (char*) ;
 int die (int ,char const*,char const*) ;
 int error (int ,char const*,char const*) ;
 int git_parse_maybe_bool (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum rebase_type parse_config_rebase(const char *key, const char *value,
  int fatal)
{
 int v = git_parse_maybe_bool(value);

 if (!v)
  return REBASE_FALSE;
 else if (v > 0)
  return REBASE_TRUE;
 else if (!strcmp(value, "preserve") || !strcmp(value, "p"))
  return REBASE_PRESERVE;
 else if (!strcmp(value, "merges") || !strcmp(value, "m"))
  return REBASE_MERGES;
 else if (!strcmp(value, "interactive") || !strcmp(value, "i"))
  return REBASE_INTERACTIVE;





 if (fatal)
  die(_("Invalid value for %s: %s"), key, value);
 else
  error(_("Invalid value for %s: %s"), key, value);

 return REBASE_INVALID;
}
