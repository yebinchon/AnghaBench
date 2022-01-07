
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int GID_OWNER ;
 int GID_WHEEL ;
 int UID_OTHER ;
 int fpath_none ;
 int fpath_none_initialized ;
 int fpath_read ;
 int fpath_read_initialized ;
 int fpath_readwrite ;
 int fpath_readwrite_initialized ;
 int fpath_write ;
 int fpath_write_initialized ;
 int setup_file (char*,int ,int ,int ,int) ;

int
priv_vfs_readwrite_fgroup_setup(int asroot, int injail, struct test *test)
{

 setup_file("priv_vfs_readwrite_fgroup_setup: fpath_none", fpath_none,
     UID_OTHER, asroot ? GID_WHEEL : GID_OWNER, 0000);
 fpath_none_initialized = 1;
 setup_file("priv_vfs_readwrite_fgroup_setup: fpath_read", fpath_read,
     UID_OTHER, asroot ? GID_WHEEL : GID_OWNER, 0040);
 fpath_read_initialized = 1;
 setup_file("priv_vfs_readwrite_fgroup_setup: fpath_write",
     fpath_write, UID_OTHER, asroot ? GID_WHEEL : GID_OWNER, 0020);
 fpath_write_initialized = 1;
 setup_file("priv_vfs_readwrite_fgroup_setup: fpath_readwrite",
     fpath_readwrite, UID_OTHER, asroot ? GID_WHEEL : GID_OWNER,
     0060);
 fpath_readwrite_initialized = 1;
 return (0);
}
