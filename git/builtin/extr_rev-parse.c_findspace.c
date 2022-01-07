
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static char *findspace(const char *s)
{
 for (; *s; s++)
  if (isspace(*s))
   return (char*)s;
 return ((void*)0);
}
