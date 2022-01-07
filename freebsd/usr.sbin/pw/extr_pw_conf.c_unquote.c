
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char const) ;

__attribute__((used)) static char *
unquote(char const * str)
{
 if (str && (*str == '"' || *str == '\'')) {
  char *p = strchr(str + 1, *str);

  if (p != ((void*)0))
   *p = '\0';
  return (char *) (*++str ? str : ((void*)0));
 }
 return (char *) str;
}
