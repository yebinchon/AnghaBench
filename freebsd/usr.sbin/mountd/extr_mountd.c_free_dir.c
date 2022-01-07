
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirlist {struct dirlist* dp_dirp; int dp_hosts; struct dirlist* dp_right; struct dirlist* dp_left; } ;


 int free (struct dirlist*) ;
 int free_host (int ) ;

__attribute__((used)) static void
free_dir(struct dirlist *dp)
{

 if (dp) {
  free_dir(dp->dp_left);
  free_dir(dp->dp_right);
  free_host(dp->dp_hosts);
  free(dp->dp_dirp);
  free(dp);
 }
}
