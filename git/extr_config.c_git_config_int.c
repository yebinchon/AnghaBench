
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die_bad_number (char const*,char const*) ;
 int git_parse_int (char const*,int*) ;

int git_config_int(const char *name, const char *value)
{
 int ret;
 if (!git_parse_int(value, &ret))
  die_bad_number(name, value);
 return ret;
}
