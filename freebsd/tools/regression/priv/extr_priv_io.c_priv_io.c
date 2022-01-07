
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int DEV_IO ;
 int EPERM ;
 int O_RDONLY ;
 int close (int) ;
 int expect (char*,int,int,int ) ;
 int open (int ,int ) ;

void
priv_io(int asroot, int injail, struct test *test)
{
 int error, fd;

 fd = open(DEV_IO, O_RDONLY);
 if (fd < 0)
  error = -1;
 else
  error = 0;
 if (asroot && injail)
  expect("priv_io(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_io(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_io(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_io(!asroot, !injail)", error, -1, EPERM);
 if (fd != -1)
  close(fd);
}
