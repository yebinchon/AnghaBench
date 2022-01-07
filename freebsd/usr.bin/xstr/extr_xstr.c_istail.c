
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
istail(char *str, char *of)
{
 int d = strlen(of) - strlen(str);

 if (d < 0 || strcmp(&of[d], str) != 0)
  return (-1);
 return (d);
}
