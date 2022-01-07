
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirlist {struct dirlist* dp_right; struct dirlist* dp_left; int dp_dirp; } ;


 int strcmp (int ,char*) ;

__attribute__((used)) static struct dirlist *
dirp_search(struct dirlist *dp, char *dirp)
{
 int cmp;

 if (dp) {
  cmp = strcmp(dp->dp_dirp, dirp);
  if (cmp > 0)
   return (dirp_search(dp->dp_left, dirp));
  else if (cmp < 0)
   return (dirp_search(dp->dp_right, dirp));
  else
   return (dp);
 }
 return (dp);
}
