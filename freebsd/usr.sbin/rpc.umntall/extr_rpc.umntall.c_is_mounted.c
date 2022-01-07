
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntfromname; } ;
typedef int name ;


 int MNAMELEN ;
 int MNT_NOWAIT ;
 int err (int,char*) ;
 int free (struct statfs*) ;
 int getfsstat (struct statfs*,long,int ) ;
 struct statfs* malloc (size_t) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char*) ;

int
is_mounted(char *hostname, char *dirp) {
 struct statfs *mntbuf;
 char name[MNAMELEN + 1];
 size_t bufsize;
 int mntsize, i;

 if (strlen(hostname) + strlen(dirp) >= MNAMELEN)
  return (0);
 snprintf(name, sizeof(name), "%s:%s", hostname, dirp);
 mntsize = getfsstat(((void*)0), 0, MNT_NOWAIT);
 if (mntsize <= 0)
  return (0);
 bufsize = (mntsize + 1) * sizeof(struct statfs);
 if ((mntbuf = malloc(bufsize)) == ((void*)0))
  err(1, "malloc");
 mntsize = getfsstat(mntbuf, (long)bufsize, MNT_NOWAIT);
 for (i = mntsize - 1; i >= 0; i--) {
  if (strcmp(mntbuf[i].f_mntfromname, name) == 0) {
   free(mntbuf);
   return (1);
  }
 }
 free(mntbuf);
 return (0);
}
