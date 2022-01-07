
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int die_bad_number (char const*,char const*) ;
 int git_parse_ssize_t (char const*,int *) ;

ssize_t git_config_ssize_t(const char *name, const char *value)
{
 ssize_t ret;
 if (!git_parse_ssize_t(value, &ret))
  die_bad_number(name, value);
 return ret;
}
