
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* kernenv_next (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static char *
_getenv_static_from(char *chkenv, const char *name)
{
 char *cp, *ep;
 int len;

 for (cp = chkenv; cp != ((void*)0); cp = kernenv_next(cp)) {
  for (ep = cp; (*ep != '=') && (*ep != 0); ep++)
   ;
  if (*ep != '=')
   continue;
  len = ep - cp;
  ep++;
  if (!strncmp(name, cp, len) && name[len] == 0)
   return (ep);
 }
 return (((void*)0));
}
