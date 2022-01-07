
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
typedef int auditinfo_addr_t ;
typedef int aia ;


 int ENOSYS ;
 int EPERM ;
 int expect (char*,int,int,int ) ;
 int getaudit_addr (int *,int) ;

void
priv_audit_getaudit_addr(int asroot, int injail, struct test *test)
{
 auditinfo_addr_t aia;
 int error;

 error = getaudit_addr(&aia, sizeof(aia));
 if (asroot && injail)
  expect("priv_audit_getaudit_addr(asroot, injail)", error, -1,
      ENOSYS);
 if (asroot && !injail)
  expect("priv_audit_getaudit_addr(asroot, !injail)", error, 0,
      0);
 if (!asroot && injail)
  expect("priv_audit_getaudit_addr(!asroot, injail)", error,
      -1, ENOSYS);
 if (!asroot && !injail)
  expect("priv_audit_getaudit_addr(!asroot, !injail)", error,
      -1, EPERM);
}
