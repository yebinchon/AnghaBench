
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_man_viewer_cmd (char const*,int,char const*) ;
 int add_man_viewer_path (char const*,int,char const*) ;
 int config_error_nonbool (char const*) ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int add_man_viewer_info(const char *var, const char *value)
{
 const char *name, *subkey;
 int namelen;

 if (parse_config_key(var, "man", &name, &namelen, &subkey) < 0 || !name)
  return 0;

 if (!strcmp(subkey, "path")) {
  if (!value)
   return config_error_nonbool(var);
  return add_man_viewer_path(name, namelen, value);
 }
 if (!strcmp(subkey, "cmd")) {
  if (!value)
   return config_error_nonbool(var);
  return add_man_viewer_cmd(name, namelen, value);
 }

 return 0;
}
