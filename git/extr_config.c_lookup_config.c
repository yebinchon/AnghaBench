
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;

int lookup_config(const char **mapping, int nr_mapping, const char *var)
{
 int i;

 for (i = 0; i < nr_mapping; i++) {
  const char *name = mapping[i];

  if (name && !strcasecmp(var, name))
   return i;
 }
 return -1;
}
