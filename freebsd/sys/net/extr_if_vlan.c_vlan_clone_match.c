
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int dummy; } ;


 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 int * vlan_clone_match_ethervid (char const*,int *) ;
 int vlanname ;

__attribute__((used)) static int
vlan_clone_match(struct if_clone *ifc, const char *name)
{
 const char *cp;

 if (vlan_clone_match_ethervid(name, ((void*)0)) != ((void*)0))
  return (1);

 if (strncmp(vlanname, name, strlen(vlanname)) != 0)
  return (0);
 for (cp = name + 4; *cp != '\0'; cp++) {
  if (*cp < '0' || *cp > '9')
   return (0);
 }

 return (1);
}
