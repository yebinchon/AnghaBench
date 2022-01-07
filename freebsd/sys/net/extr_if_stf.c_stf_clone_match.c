
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int dummy; } ;


 int ** stfnames ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static int
stf_clone_match(struct if_clone *ifc, const char *name)
{
 int i;

 for(i = 0; stfnames[i] != ((void*)0); i++) {
  if (strcmp(stfnames[i], name) == 0)
   return (1);
 }

 return (0);
}
