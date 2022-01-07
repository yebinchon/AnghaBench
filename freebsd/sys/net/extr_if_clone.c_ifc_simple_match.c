
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {char const* ifc_name; } ;


 int strlen (char const*) ;

__attribute__((used)) static int
ifc_simple_match(struct if_clone *ifc, const char *name)
{
 const char *cp;
 int i;


 for (cp = name, i = 0; i < strlen(ifc->ifc_name); i++, cp++) {
  if (ifc->ifc_name[i] != *cp)
   return (0);
 }


 for (; *cp != '\0'; cp++) {
  if (*cp < '0' || *cp > '9')
   return (0);
 }

 return (1);
}
