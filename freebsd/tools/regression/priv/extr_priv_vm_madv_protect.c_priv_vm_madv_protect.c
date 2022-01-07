
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int MADV_PROTECT ;
 int expect (char*,int,int,int ) ;
 int madvise (int *,int ,int ) ;

void
priv_vm_madv_protect(int asroot, int injail, struct test *test)
{
 int error;

 error = madvise(((void*)0), 0, MADV_PROTECT);
 if (asroot && injail)
  expect("priv_vm_madv_protect(asroot, injail)", error, -1,
      EPERM);
 if (asroot && !injail)
  expect("priv_vm_madv_protect(asroot, !injail", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vm_madv_protect(!asroot, injail", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_vm_madv_protect(!asroot, !injail", error, -1,
      EPERM);
}
