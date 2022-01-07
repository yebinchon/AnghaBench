
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
struct stat {int dummy; } ;


 int EPERM ;
 int expect (char*,int,int,int ) ;
 int fh ;
 int fhstat (int *,struct stat*) ;

void
priv_vfs_fhstat(int asroot, int injail, struct test *test)
{
 struct stat sb;
 int error;

 error = fhstat(&fh, &sb);
 if (asroot && injail)
  expect("priv_vfs_fhstat(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_vfs_fhstat(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_fhstat(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_fhstat(!asroot, !injail)", error, -1, EPERM);
}
