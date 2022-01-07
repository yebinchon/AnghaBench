
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die_bad_number (char const*,char const*) ;
 int git_parse_ulong (char const*,unsigned long*) ;

unsigned long git_config_ulong(const char *name, const char *value)
{
 unsigned long ret;
 if (!git_parse_ulong(value, &ret))
  die_bad_number(name, value);
 return ret;
}
