
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
typedef int auditinfo_t ;


 int ENOSYS ;
 int EPERM ;
 int expect (char*,int,int,int ) ;
 int getaudit (int *) ;

void
priv_audit_getaudit(int asroot, int injail, struct test *test)
{
 auditinfo_t ai;
 int error;

 error = getaudit(&ai);
 if (asroot && injail)
  expect("priv_audit_getaudit(asroot, injail)", error, -1,
      ENOSYS);
 if (asroot && !injail)
  expect("priv_audit_getaudit(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_audit_getaudit(!asroot, injail)", error, -1,
      ENOSYS);
 if (!asroot && !injail)
  expect("priv_audit_getaudit(!asroot, !injail)", error, -1,
      EPERM);
}
