
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int KENV_SET ;
 int KENV_VAR_LEN ;
 int KENV_VAR_NAME ;
 int KENV_VAR_VALUE ;
 int expect (char*,int,int,int ) ;
 int kenv (int ,int ,int ,int ) ;

void
priv_kenv_set(int asroot, int injail, struct test *test)
{
 int error;

 error = kenv(KENV_SET, KENV_VAR_NAME, KENV_VAR_VALUE, KENV_VAR_LEN);
 if (asroot && injail)
  expect("priv_kenv_set(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_kenv_set(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_kenv_set(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_kenv_set(!asroot, !injail)", error, -1, EPERM);
}
