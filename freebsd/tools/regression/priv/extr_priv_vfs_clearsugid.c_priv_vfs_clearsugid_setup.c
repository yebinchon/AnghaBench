
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int GID_OTHER ;
 int S_ISUID ;
 int UID_OWNER ;
 int fpath ;
 int fpath_initialized ;
 int setup_file (char*,int ,int ,int ,int) ;

int
priv_vfs_clearsugid_setup(int asroot, int injail, struct test *test)
{

 setup_file("priv_vfs_clearsugid_setup: fpath", fpath, UID_OWNER,
     GID_OTHER, 0600 | S_ISUID);
 fpath_initialized = 1;
 return (0);
}
