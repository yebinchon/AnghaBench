
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int STDERR_FILENO ;
 scalar_t__ errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_getvalue (int ,int*) ;
 int pass () ;

__attribute__((used)) static void
getvalue_invalid_semaphore(void)
{
 int val;

 if (ksem_getvalue(STDERR_FILENO, &val) >= 0) {
  fail_err("ksem_getvalue() didn't fail");
  return;
 }
 if (errno != EINVAL) {
  fail_errno("ksem_getvalue");
  return;
 }
 pass();
}
