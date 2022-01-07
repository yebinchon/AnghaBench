
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
get_yesno(const char *str)
{

 if (strcmp(str, "yes") == 0)
  return (1);
 else if (strcmp(str, "no") == 0)
  return (0);
 else
  return (-1);
}
