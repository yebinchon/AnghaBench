
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
trim(char *s)
{
 char *t;

 while (isspace(*s))
  s++;
 t = s + strlen(s) - 1;
 while (t > s && isspace(*t))
  *t-- = '\0';
 return s;
}
