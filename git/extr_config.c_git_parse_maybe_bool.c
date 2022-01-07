
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git_parse_int (char const*,int*) ;
 int git_parse_maybe_bool_text (char const*) ;

int git_parse_maybe_bool(const char *value)
{
 int v = git_parse_maybe_bool_text(value);
 if (0 <= v)
  return v;
 if (git_parse_int(value, &v))
  return !!v;
 return -1;
}
