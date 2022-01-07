
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int strcasecmp (char const*,char*) ;

__attribute__((used)) static uintmax_t get_unit_factor(const char *end)
{
 if (!*end)
  return 1;
 else if (!strcasecmp(end, "k"))
  return 1024;
 else if (!strcasecmp(end, "m"))
  return 1024 * 1024;
 else if (!strcasecmp(end, "g"))
  return 1024 * 1024 * 1024;
 return 0;
}
