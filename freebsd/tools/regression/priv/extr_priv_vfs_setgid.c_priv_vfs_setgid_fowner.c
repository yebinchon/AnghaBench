
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int S_ISGID ;
 int chmod (int ,int) ;
 int expect (char*,int,int ,int ) ;
 int fpath ;

void
priv_vfs_setgid_fowner(int asroot, int injail, struct test *test)
{
 int error;

 error = chmod(fpath, 0600 | S_ISGID);
 if (asroot && injail)
  expect("priv_vfs_setgid_fowner(asroot, injail)", error, 0,
      0);
 if (asroot && !injail)
  expect("priv_vfs_setgid_fowner(asroot, !injail)", error, 0,
      0);
 if (!asroot && injail)
  expect("priv_vfs_setgid_fowner(!asroot, injail)", error, 0,
      0);
 if (!asroot && !injail)
  expect("priv_vfs_setgid_fowner(!asroot, !injail)", error, 0,
      0);
}
