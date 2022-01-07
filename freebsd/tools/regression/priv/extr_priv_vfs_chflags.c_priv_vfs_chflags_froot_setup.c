
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int GID_WHEEL ;
 int UID_ROOT ;
 int fpath ;
 int fpath_initialized ;
 int setup_file (char*,int ,int ,int ,int) ;

int
priv_vfs_chflags_froot_setup(int asroot, int injail, struct test *test)
{

 setup_file("priv_vfs_chflags_froot_setup: fpath", fpath, UID_ROOT,
     GID_WHEEL, 0600);
 fpath_initialized = 1;
 return (0);
}
