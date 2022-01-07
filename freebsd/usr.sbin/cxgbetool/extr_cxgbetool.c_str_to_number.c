
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strtol (char const*,char**,int ) ;
 long long strtoll (char const*,char**,int ) ;

__attribute__((used)) static char *
str_to_number(const char *s, long *val, long long *vall)
{
 char *p;

 if (vall)
  *vall = strtoll(s, &p, 0);
 else if (val)
  *val = strtol(s, &p, 0);
 else
  p = ((void*)0);

 return (p);
}
