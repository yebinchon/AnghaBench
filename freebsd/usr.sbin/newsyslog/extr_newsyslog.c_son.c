
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;

__attribute__((used)) static char *
son(char *p)
{
 while (p && *p && !isspace(*p))
  p++;
 return (p);
}
