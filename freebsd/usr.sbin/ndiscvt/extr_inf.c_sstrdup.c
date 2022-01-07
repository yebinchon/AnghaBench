
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
sstrdup(const char *str)
{
 if (str != ((void*)0) && strlen(str))
  return (strdup(str));
 return (((void*)0));
}
