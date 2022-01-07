
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int die_bad_number (char const*,char const*) ;
 int git_parse_int64 (char const*,int *) ;

int64_t git_config_int64(const char *name, const char *value)
{
 int64_t ret;
 if (!git_parse_int64(value, &ret))
  die_bad_number(name, value);
 return ret;
}
