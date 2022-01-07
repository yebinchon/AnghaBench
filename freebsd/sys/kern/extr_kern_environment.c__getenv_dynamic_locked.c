
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** kenvp ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static char *
_getenv_dynamic_locked(const char *name, int *idx)
{
 char *cp;
 int len, i;

 len = strlen(name);
 for (cp = kenvp[0], i = 0; cp != ((void*)0); cp = kenvp[++i]) {
  if ((strncmp(cp, name, len) == 0) &&
      (cp[len] == '=')) {
   if (idx != ((void*)0))
    *idx = i;
   return (cp + len + 1);
  }
 }
 return (((void*)0));
}
