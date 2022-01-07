
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int expect (char*,int,int,int ) ;
 int loginname ;
 int setlogin (int ) ;

void
priv_proc_setlogin(int asroot, int injail, struct test *test)
{
 int error;

 error = setlogin(loginname);
 if (asroot && injail)
  expect("priv_proc_setlogin(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_proc_setlogin(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_proc_setlogin(!sroot, injail)", error, -1,
      EPERM);
 if (!asroot && !injail)
  expect("priv_proc_setlogin(!asroot, !injail)", error, -1,
      EPERM);
}
