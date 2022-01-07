
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int ** gr_mem; } ;


 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static bool
grp_has_member(struct group *grp, const char *name)
{
 int j;

 for (j = 0; grp->gr_mem != ((void*)0) && grp->gr_mem[j] != ((void*)0); j++)
  if (strcmp(grp->gr_mem[j], name) == 0)
   return (1);
 return (0);
}
