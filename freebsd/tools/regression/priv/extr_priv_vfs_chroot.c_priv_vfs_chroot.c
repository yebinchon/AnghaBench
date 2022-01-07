
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int chroot (char*) ;
 int expect (char*,int,int,int ) ;

void
priv_vfs_chroot(int asroot, int injail, struct test *test)
{
 int error;

 error = chroot("/");
 if (asroot && injail)
  expect("priv_vfs_chroot(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_vfs_chroot(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_chroot(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_chroot(!asroot, !injail)", error, -1, EPERM);
}
