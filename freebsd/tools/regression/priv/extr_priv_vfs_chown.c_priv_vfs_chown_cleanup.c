
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int fpath ;
 scalar_t__ fpath_initialized ;
 int unlink (int ) ;

void
priv_vfs_chown_cleanup(int asroot, int injail, struct test *test)
{

 if (fpath_initialized) {
  (void)unlink(fpath);
  fpath_initialized = 0;
 }
}
