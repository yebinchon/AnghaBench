
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;
 int warnx (char*,char const*,size_t,char const*) ;

__attribute__((used)) static char *
getstring(const char *fname, size_t line, char **cp, const char *tag)
{
 char *str;

 while ((str = strsep(cp, " \t")) != ((void*)0) && *str == '\0')
  continue;

 if (str == ((void*)0))
  warnx("%s, %zu: no %s found", fname, line, tag);

 return str;
}
