
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int expect (char*,int,int,int ) ;
 int getpagesize () ;
 int mlock (int*,int ) ;

void
priv_vm_mlock(int asroot, int injail, struct test *test)
{
 int error;

 error = mlock(&error, getpagesize());
 if (asroot && injail)
  expect("priv_vm_mlock(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_vm_mlock(asroot, !injail", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vm_mlock(!asroot, injail", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_vm_mlock(!asroot, !injail", error, -1, EPERM);
}
