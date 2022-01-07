
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
str2status(const char *str)
{

 if (strcmp(str, "complete") == 0)
  return (0);
 if (strcmp(str, "degraded") == 0)
  return (1);
 return (-1);
}
