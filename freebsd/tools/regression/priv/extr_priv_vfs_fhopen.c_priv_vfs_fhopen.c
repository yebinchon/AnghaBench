
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int expect (char*,int,int,int ) ;
 int fh ;
 int fhopen (int *,int ) ;

void
priv_vfs_fhopen(int asroot, int injail, struct test *test)
{
 int errno_saved, error, fd;

 fd = fhopen(&fh, O_RDONLY);
 if (fd >= 0) {
  error = 0;
  errno_saved = errno;
  close(fd);
  errno = errno_saved;
 } else
  error = -1;
 if (asroot && injail)
  expect("priv_vfs_fhopen(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_vfs_fhopen(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_fhopen(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_fhopen(!asroot, !injail)", error, -1, EPERM);
}
