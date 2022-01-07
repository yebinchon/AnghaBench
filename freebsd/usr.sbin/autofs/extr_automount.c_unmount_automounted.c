
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_flags; int f_mntonname; int f_fstypename; } ;


 int MNT_AUTOMOUNTED ;
 int MNT_WAIT ;
 int getmntinfo (struct statfs**,int ) ;
 int log_debugx (char*,...) ;
 int log_err (int,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int unmount_by_statfs (struct statfs*,int) ;

__attribute__((used)) static void
unmount_automounted(bool force)
{
 struct statfs *mntbuf;
 int i, nitems;

 nitems = getmntinfo(&mntbuf, MNT_WAIT);
 if (nitems <= 0)
  log_err(1, "getmntinfo");

 log_debugx("unmounting automounted filesystems");

 for (i = 0; i < nitems; i++) {
  if (strcmp(mntbuf[i].f_fstypename, "autofs") == 0) {
   log_debugx("skipping %s, filesystem type is autofs",
       mntbuf[i].f_mntonname);
   continue;
  }

  if ((mntbuf[i].f_flags & MNT_AUTOMOUNTED) == 0) {
   log_debugx("skipping %s, not automounted",
       mntbuf[i].f_mntonname);
   continue;
  }

  unmount_by_statfs(&(mntbuf[i]), force);
 }
}
