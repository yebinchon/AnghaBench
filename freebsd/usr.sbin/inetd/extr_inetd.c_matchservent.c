
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {char* s_name; char** s_aliases; } ;


 struct servent* getservbyname (char const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
matchservent(const char *name1, const char *name2, const char *proto)
{
 char **alias, *p;
 struct servent *se;

 if (strcmp(proto, "unix") == 0) {
  if ((p = strrchr(name1, '/')) != ((void*)0))
   name1 = p + 1;
  if ((p = strrchr(name2, '/')) != ((void*)0))
   name2 = p + 1;
 }
 if (strcmp(name1, name2) == 0)
  return(1);
 if ((se = getservbyname(name1, proto)) != ((void*)0)) {
  if (strcmp(name2, se->s_name) == 0)
   return(1);
  for (alias = se->s_aliases; *alias; alias++)
   if (strcmp(name2, *alias) == 0)
    return(1);
 }
 return(0);
}
