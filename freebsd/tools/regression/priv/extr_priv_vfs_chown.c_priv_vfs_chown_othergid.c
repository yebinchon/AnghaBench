
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int GID_OTHER ;
 int chown (int ,int,int ) ;
 int expect (char*,int,int,int ) ;
 int fpath ;

void
priv_vfs_chown_othergid(int asroot, int injail, struct test *test)
{
 int error;

 error = chown(fpath, -1, GID_OTHER);
 if (asroot && injail)
  expect("priv_vfs_chown_othergid(root, jail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_vfs_chown_othergid(root, !jail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_chown_othergid(!root, !jail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_chown_othergid(!root, !jail)", error, -1,
      EPERM);
}
