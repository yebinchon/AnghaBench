
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
typedef int record ;


 int EINVAL ;
 int ENOSYS ;
 int EPERM ;
 int MAX_AUDIT_RECORD_SIZE ;
 int audit (char*,int) ;
 int bzero (char*,int) ;
 int expect (char*,int,int,int ) ;

void
priv_audit_submit(int asroot, int injail, struct test *test)
{
 char record[MAX_AUDIT_RECORD_SIZE+10];
 int error;

 bzero(record, sizeof(record));
 error = audit(record, sizeof(record));
 if (asroot && injail)
  expect("priv_audit_submit(asroot, injail)", error, -1,
      ENOSYS);
 if (asroot && !injail)
  expect("priv_audit_submit(asroot, !injail)", error, -1,
      EINVAL);
 if (!asroot && injail)
  expect("priv_audit_submit(!asroot, injail)", error, -1,
      ENOSYS);
 if (!asroot && !injail)
  expect("priv_audit_submit(!asroot, !injail)", error, -1,
      EPERM);
}
