
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int dummy; } ;


 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
t4_cloner_match(struct if_clone *ifc, const char *name)
{

 if (strncmp(name, "t4nex", 5) != 0 &&
     strncmp(name, "t5nex", 5) != 0 &&
     strncmp(name, "t6nex", 5) != 0)
  return (0);
 if (name[5] < '0' || name[5] > '9')
  return (0);
 return (1);
}
