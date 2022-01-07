
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int xalloc (scalar_t__) ;

__attribute__((used)) static char *
savestr(const char *s)
{
 if (s == ((void*)0))
  return (((void*)0));

 return (strcpy(xalloc(strlen(s) + 1), s));
}
