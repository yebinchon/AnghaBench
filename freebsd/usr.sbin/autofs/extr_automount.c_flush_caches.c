
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; int f_fstypename; } ;


 int MNT_WAIT ;
 int flush_autofs (int ) ;
 int getmntinfo (struct statfs**,int ) ;
 int log_debugx (char*,...) ;
 int log_err (int,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
flush_caches(void)
{
 struct statfs *mntbuf;
 int i, nitems;

 nitems = getmntinfo(&mntbuf, MNT_WAIT);
 if (nitems <= 0)
  log_err(1, "getmntinfo");

 log_debugx("flushing autofs caches");

 for (i = 0; i < nitems; i++) {
  if (strcmp(mntbuf[i].f_fstypename, "autofs") != 0) {
   log_debugx("skipping %s, filesystem type is not autofs",
       mntbuf[i].f_mntonname);
   continue;
  }

  flush_autofs(mntbuf[i].f_mntonname);
 }
}
