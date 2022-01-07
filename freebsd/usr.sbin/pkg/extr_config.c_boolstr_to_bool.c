
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static int
boolstr_to_bool(const char *str)
{
 if (str != ((void*)0) && (strcasecmp(str, "true") == 0 ||
     strcasecmp(str, "yes") == 0 || strcasecmp(str, "on") == 0 ||
     str[0] == '1'))
  return (1);

 return (0);
}
