
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EACCES ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int fpath_none ;
 int fpath_read ;
 int fpath_readwrite ;
 int fpath_write ;
 int try_io (char*,int ,int,int,int ,int,int ) ;

void
priv_vfs_readwrite_fgroup(int asroot, int injail, struct test *test)
{

 try_io("priv_vfs_readwrite_fgroup(none, O_RDONLY)", fpath_none,
     asroot, injail, O_RDONLY, asroot ? 0 : -1, EACCES);
 try_io("priv_vfs_readwrite_fgroup(none, O_WRONLY)", fpath_none,
     asroot, injail, O_WRONLY, asroot ? 0 : -1, EACCES);
 try_io("priv_vfs_readwrite_fgroup(none, O_RDWR)", fpath_none,
     asroot, injail, O_RDWR, asroot ? 0 : -1, EACCES);

 try_io("priv_vfs_readwrite_fgroup(read, O_RDONLY)", fpath_read,
     asroot, injail, O_RDONLY, 0, 0);
 try_io("priv_vfs_readwrite_fgroup(read, O_WRONLY)", fpath_read,
     asroot, injail, O_WRONLY, asroot ? 0 : -1, EACCES);
 try_io("priv_vfs_readwrite_fgroup(read, O_RDWR)", fpath_read,
     asroot, injail, O_RDWR, asroot ? 0 : -1, EACCES);

 try_io("priv_vfs_readwrite_fgroup(write, O_RDONLY)", fpath_write,
     asroot, injail, O_RDONLY, asroot ? 0 : -1, EACCES);
 try_io("priv_vfs_readwrite_fgroup(write, O_WRONLY)", fpath_write,
     asroot, injail, O_WRONLY, 0, 0);
 try_io("priv_vfs_readwrite_fgroup(write, O_RDWR)", fpath_write,
     asroot, injail, O_RDWR, asroot ? 0 : -1, EACCES);

 try_io("priv_vfs_readwrite_fgroup(write, O_RDONLY)", fpath_readwrite,
     asroot, injail, O_RDONLY, 0, 0);
 try_io("priv_vfs_readwrite_fgroup(write, O_WRONLY)", fpath_readwrite,
     asroot, injail, O_WRONLY, 0, 0);
 try_io("priv_vfs_readwrite_fgroup(write, O_RDWR)", fpath_readwrite,
     asroot, injail, O_RDWR, 0, 0);
}
