
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
typedef int policy ;


 int A_GETPOLICY ;
 int ENOSYS ;
 int EPERM ;
 int auditon (int ,long*,int) ;
 int expect (char*,int,int,int ) ;

void
priv_audit_control(int asroot, int injail, struct test *test)
{
 long policy;
 int error;

 error = auditon(A_GETPOLICY, &policy, sizeof(policy));
 if (asroot && injail)
  expect("priv_audit_control(asroot, injail)", error, -1,
      ENOSYS);
 if (asroot && !injail)
  expect("priv_audit_control(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_audit_control(!asroot, injail)", error, -1,
      ENOSYS);
 if (!asroot && !injail)
  expect("priv_audit_control(!asroot, !injail)", error, -1,
      EPERM);
}
