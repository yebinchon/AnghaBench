
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_ksocket_alias {int family; int value; int * name; } ;


 scalar_t__ strcmp (char const*,int *) ;
 scalar_t__ strtoul (char const*,char**,int) ;

__attribute__((used)) static int
ng_ksocket_parse(const struct ng_ksocket_alias *aliases,
 const char *s, int family)
{
 int k, val;
 char *eptr;


 for (k = 0; aliases[k].name != ((void*)0); k++) {
  if (strcmp(s, aliases[k].name) == 0
      && aliases[k].family == family)
   return aliases[k].value;
 }


 val = (int)strtoul(s, &eptr, 10);
 if (val < 0 || *eptr != '\0')
  return (-1);
 return (val);
}
