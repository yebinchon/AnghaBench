
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int GID_WHEEL ;
 int UID_ROOT ;
 int fh ;
 int fpath ;
 int fpath_initialized ;
 scalar_t__ getfh (int ,int *) ;
 int setup_file (char*,int ,int ,int ,int) ;
 int warn (char*,int ) ;

int
priv_vfs_fhstat_setup(int asroot, int injail, struct test *test)
{

 setup_file("priv_vfs_fhstat_setup: fpath", fpath, UID_ROOT,
     GID_WHEEL, 0644);
 fpath_initialized = 1;
 if (getfh(fpath, &fh) < 0) {
  warn("priv_vfs_fhstat_setup: getfh(%s)", fpath);
  return (-1);
 }
 return (0);
}
