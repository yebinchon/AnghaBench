
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int STDERR_FILENO ;
 scalar_t__ errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_trywait (int ) ;
 int pass () ;

__attribute__((used)) static void
trywait_invalid_semaphore(void)
{

 if (ksem_trywait(STDERR_FILENO) >= 0) {
  fail_err("ksem_trywait() didn't fail");
  return;
 }
 if (errno != EINVAL) {
  fail_errno("ksem_trywait");
  return;
 }
 pass();
}
