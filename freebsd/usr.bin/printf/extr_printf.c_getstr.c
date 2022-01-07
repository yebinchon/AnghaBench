
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * gargv ;

__attribute__((used)) static const char *
getstr(void)
{
 if (!*gargv)
  return ("");
 return (*gargv++);
}
