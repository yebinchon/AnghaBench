
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int chflags (int ,int ) ;
 int fpath ;
 scalar_t__ fpath_initialized ;
 int unlink (int ) ;

void
priv_vfs_chflags_cleanup(int asroot, int injail, struct test *test)
{

 if (fpath_initialized) {
  (void)chflags(fpath, 0);
  (void)unlink(fpath);
  fpath_initialized = 0;
 }
}
