
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int ENOSYS ;
 int EPERM ;
 int ai ;
 int expect (char*,int,int,int ) ;
 int setaudit (int *) ;

void
priv_audit_setaudit(int asroot, int injail, struct test *test)
{
 int error;

 error = setaudit(&ai);
 if (asroot && injail)
  expect("priv_audit_setaudit(asroot, injail)", error, -1,
      ENOSYS);
 if (asroot && !injail)
  expect("priv_audit_setaudit(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_audit_setaudit(!asroot, injail)", error, -1,
      ENOSYS);
 if (!asroot && !injail)
  expect("priv_audit_setaudit(!asroot, !injail)", error, -1,
      EPERM);
}
