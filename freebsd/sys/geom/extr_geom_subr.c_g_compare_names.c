
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_get_device_prefix_len (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

int
g_compare_names(const char *namea, const char *nameb)
{
 int deva, devb;

 if (strcmp(namea, nameb) == 0)
  return (1);
 deva = g_get_device_prefix_len(namea);
 if (deva == 0)
  return (0);
 devb = g_get_device_prefix_len(nameb);
 if (devb == 0)
  return (0);
 if (strcmp(namea + deva, nameb + devb) == 0)
  return (1);
 return (0);
}
