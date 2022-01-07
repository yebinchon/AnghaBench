
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int S_ISTXT ;
 int chmod (int ,int) ;
 int dpath ;
 int expect (char*,int,int ,int ) ;

void
priv_vfs_stickyfile_dir_fowner(int asroot, int injail, struct test *test)
{
 int error;

 error = chmod(dpath, 0700 | S_ISTXT);
 if (asroot && injail)
  expect("priv_vfs_stickyfile_dir_fowner(root, jail)", error,
      0, 0);
 if (asroot && !injail)
  expect("priv_vfs_stickyfile_dir_fowner(root, !jail)", error,
      0, 0);
 if (!asroot && injail)
  expect("priv_vfs_stickyfile_dir_fowner(!root, jail)", error,
      0, 0);
 if (!asroot && !injail)
  expect("priv_vfs_stickyfile_dir_fowner(!root, !jail)", error,
      0, 0);
}
