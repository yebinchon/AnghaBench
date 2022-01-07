
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int ** gr_mem; } ;


 scalar_t__ strcmp (int *,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
delete_members(struct group *grp, char *list)
{
 char *p;
 int k;

 if (grp->gr_mem == ((void*)0))
  return;

 for (p = strtok(list, ", \t"); p != ((void*)0); p = strtok(((void*)0), ", \t")) {
  for (k = 0; grp->gr_mem[k] != ((void*)0); k++) {
   if (strcmp(grp->gr_mem[k], p) == 0)
    break;
  }
  if (grp->gr_mem[k] == ((void*)0))
   continue;

  for (; grp->gr_mem[k] != ((void*)0); k++)
   grp->gr_mem[k] = grp->gr_mem[k+1];
 }
}
