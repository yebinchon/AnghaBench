
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
ok_to_export(const char *s)
{
 static const char *noexport[] = {
  "SHELL", "LOGNAME", "MAIL", "CDPATH",
  "IFS", "PATH", ((void*)0)
 };
 const char **pp;
 size_t n;

 if (strlen(s) > 1024 || strchr(s, '=') == ((void*)0))
  return 0;
 if (strncmp(s, "LD_", 3) == 0)
  return 0;
 for (pp = noexport; *pp != ((void*)0); pp++) {
  n = strlen(*pp);
  if (s[n] == '=' && strncmp(s, *pp, n) == 0)
   return 0;
 }
 return 1;
}
