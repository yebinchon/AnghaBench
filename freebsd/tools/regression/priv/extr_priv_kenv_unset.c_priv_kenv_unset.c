
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int KENV_UNSET ;
 int KENV_VAR_NAME ;
 int expect (char*,int,int,int ) ;
 int kenv (int ,int ,int *,int ) ;

void
priv_kenv_unset(int asroot, int injail, struct test *test)
{
 int error;

 error = kenv(KENV_UNSET, KENV_VAR_NAME, ((void*)0), 0);
 if (asroot && injail)
  expect("priv_kenv_unset(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_kenv_unset(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_kenv_unset(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_kenv_unset(!asroot, !injail)", error, -1, EPERM);
}
