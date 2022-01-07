
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int skip_prefix (char const*,char const*,char const**) ;
 char* strrchr (char const*,char) ;

int parse_config_key(const char *var,
       const char *section,
       const char **subsection, int *subsection_len,
       const char **key)
{
 const char *dot;


 if (!skip_prefix(var, section, &var) || *var != '.')
  return -1;






 dot = strrchr(var, '.');
 *key = dot + 1;


 if (dot == var) {
  if (subsection) {
   *subsection = ((void*)0);
   *subsection_len = 0;
  }
 }
 else {
  if (!subsection)
   return -1;
  *subsection = var + 1;
  *subsection_len = dot - *subsection;
 }

 return 0;
}
