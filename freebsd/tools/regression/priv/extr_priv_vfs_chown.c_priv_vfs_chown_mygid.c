
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int GID_OWNER ;
 int GID_WHEEL ;
 int chown (int ,int,int ) ;
 int expect (char*,int,int ,int ) ;
 int fpath ;

void
priv_vfs_chown_mygid(int asroot, int injail, struct test *test)
{
 int error;

 error = chown(fpath, -1, asroot ? GID_WHEEL : GID_OWNER);
 if (asroot && injail)
  expect("priv_vfs_chown_mygid(root, jail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_vfs_chown_mygid(root, !jail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_chown_mygid(!root, !jail)", error, 0, 0);
 if (!asroot && !injail)
  expect("priv_vfs_chown_mygid(!root, !jail)", error, 0, 0);
}
