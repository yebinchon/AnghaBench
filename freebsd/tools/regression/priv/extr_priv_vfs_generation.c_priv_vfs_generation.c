
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
struct stat {scalar_t__ st_gen; } ;


 int EPERM ;
 int errno ;
 int expect (char*,int,int,int ) ;
 int fpath ;
 int stat (int ,struct stat*) ;
 int warn (char*) ;

void
priv_vfs_generation(int asroot, int injail, struct test *test)
{
 struct stat sb;
 int error;

 error = stat(fpath, &sb);
 if (error < 0)
  warn("priv_vfs_generation(asroot, injail) stat");

 if (sb.st_gen == 0) {
  error = -1;
  errno = EPERM;
 } else
  error = 0;
 if (asroot && injail)
  expect("priv_vfs_generation(asroot, injail)", error, -1,
      EPERM);
 if (asroot && !injail)
  expect("priv_vfs_generation(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_generation(!asroot, injail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_generation(!asroot, !injail)", error, -1,
      EPERM);
}
