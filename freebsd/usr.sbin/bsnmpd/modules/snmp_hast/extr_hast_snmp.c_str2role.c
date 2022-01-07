
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAST_ROLE_INIT ;
 int HAST_ROLE_PRIMARY ;
 int HAST_ROLE_SECONDARY ;
 int HAST_ROLE_UNDEF ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
str2role(const char *str)
{

 if (strcmp(str, "init") == 0)
  return (HAST_ROLE_INIT);
 if (strcmp(str, "primary") == 0)
  return (HAST_ROLE_PRIMARY);
 if (strcmp(str, "secondary") == 0)
  return (HAST_ROLE_SECONDARY);
 return (HAST_ROLE_UNDEF);
}
