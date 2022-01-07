
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static char *
sob(char *p)
{
 while (p && *p && isspace(*p))
  p++;
 return (p);
}
