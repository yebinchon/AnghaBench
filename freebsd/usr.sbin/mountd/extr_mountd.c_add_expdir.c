
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostlist {int dummy; } ;
struct dirlist {char* dp_dirp; struct hostlist* dp_hosts; scalar_t__ dp_flag; struct dirlist* dp_right; struct dirlist* dp_left; } ;


 struct dirlist* malloc (int) ;
 int out_of_mem () ;
 char* strndup (char*,int) ;

__attribute__((used)) static char *
add_expdir(struct dirlist **dpp, char *cp, int len)
{
 struct dirlist *dp;

 dp = malloc(sizeof (struct dirlist));
 if (dp == (struct dirlist *)((void*)0))
  out_of_mem();
 dp->dp_left = *dpp;
 dp->dp_right = (struct dirlist *)((void*)0);
 dp->dp_flag = 0;
 dp->dp_hosts = (struct hostlist *)((void*)0);
 dp->dp_dirp = strndup(cp, len);
 if (dp->dp_dirp == ((void*)0))
  out_of_mem();
 *dpp = dp;
 return (dp->dp_dirp);
}
