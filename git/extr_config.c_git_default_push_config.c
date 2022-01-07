
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUSH_DEFAULT_CURRENT ;
 int PUSH_DEFAULT_MATCHING ;
 int PUSH_DEFAULT_NOTHING ;
 int PUSH_DEFAULT_SIMPLE ;
 int PUSH_DEFAULT_UPSTREAM ;
 int _ (char*) ;
 int config_error_nonbool (char const*) ;
 int error (int ,...) ;
 int push_default ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_default_push_config(const char *var, const char *value)
{
 if (!strcmp(var, "push.default")) {
  if (!value)
   return config_error_nonbool(var);
  else if (!strcmp(value, "nothing"))
   push_default = PUSH_DEFAULT_NOTHING;
  else if (!strcmp(value, "matching"))
   push_default = PUSH_DEFAULT_MATCHING;
  else if (!strcmp(value, "simple"))
   push_default = PUSH_DEFAULT_SIMPLE;
  else if (!strcmp(value, "upstream"))
   push_default = PUSH_DEFAULT_UPSTREAM;
  else if (!strcmp(value, "tracking"))
   push_default = PUSH_DEFAULT_UPSTREAM;
  else if (!strcmp(value, "current"))
   push_default = PUSH_DEFAULT_CURRENT;
  else {
   error(_("malformed value for %s: %s"), var, value);
   return error(_("must be one of nothing, matching, simple, "
           "upstream or current"));
  }
  return 0;
 }


 return 0;
}
