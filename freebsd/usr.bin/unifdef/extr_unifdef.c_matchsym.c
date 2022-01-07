
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ endsym (char const) ;

__attribute__((used)) static const char *
matchsym(const char *s, const char *t)
{
 while (*s != '\0' && *t != '\0')
  if (*s != *t)
   return (((void*)0));
  else
   ++s, ++t;
 if (*s == '\0' && endsym(*t))
  return(t);
 else
  return(((void*)0));
}
