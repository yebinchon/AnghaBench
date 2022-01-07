
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
struct statfs {int dummy; } ;


 int EPERM ;
 int expect (char*,int,int,int ) ;
 int fh ;
 int fhstatfs (int *,struct statfs*) ;

void
priv_vfs_fhstatfs(int asroot, int injail, struct test *test)
{
 struct statfs sf;
 int error;

 error = fhstatfs(&fh, &sf);
 if (asroot && injail)
  expect("priv_vfs_fhstatfs(asroot, injail)", error, -1,
      EPERM);
 if (asroot && !injail)
  expect("priv_vfs_fhstatfs(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_fhstatfs(!asroot, injail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_fhstatfs(!asroot, !injail)", error, -1,
      EPERM);
}
