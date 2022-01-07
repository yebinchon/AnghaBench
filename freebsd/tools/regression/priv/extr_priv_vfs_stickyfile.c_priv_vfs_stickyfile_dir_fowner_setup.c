
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int GID_OWNER ;
 int UID_OWNER ;
 int dpath ;
 int dpath_initialized ;
 int setup_dir (char*,int ,int ,int ,int) ;

int
priv_vfs_stickyfile_dir_fowner_setup(int asroot, int injail,
    struct test *test)
{

 setup_dir("priv_vfs_stickyfile_fowner_setup: dpath", dpath,
     UID_OWNER, GID_OWNER, 0700);
 dpath_initialized = 1;
 return (0);
}
