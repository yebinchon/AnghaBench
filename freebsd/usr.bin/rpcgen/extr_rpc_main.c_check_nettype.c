
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
check_nettype(const char *name, const char *list_to_check[])
{
 int i;
 for (i = 0; list_to_check[i] != ((void*)0); i++) {
  if (strcmp(name, list_to_check[i]) == 0) {
   return (1);
  }
 }
 warnx("illegal nettype :\'%s\'", name);
 return (0);
}
