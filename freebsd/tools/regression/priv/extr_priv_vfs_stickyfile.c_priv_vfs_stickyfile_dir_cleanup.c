
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int dpath ;
 scalar_t__ dpath_initialized ;
 int rmdir (int ) ;

void
priv_vfs_stickyfile_dir_cleanup(int asroot, int injail, struct test *test)
{

 if (dpath_initialized) {
  (void)rmdir(dpath);
  dpath_initialized = 0;
 }
}
