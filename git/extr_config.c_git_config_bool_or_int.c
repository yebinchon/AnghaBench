
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_int (char const*,char const*) ;
 int git_parse_maybe_bool_text (char const*) ;

int git_config_bool_or_int(const char *name, const char *value, int *is_bool)
{
 int v = git_parse_maybe_bool_text(value);
 if (0 <= v) {
  *is_bool = 1;
  return v;
 }
 *is_bool = 0;
 return git_config_int(name, value);
}
