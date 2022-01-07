
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_close (int ) ;
 int pass () ;

__attribute__((used)) static void
ksem_close_should_fail(semid_t id, int error)
{

 if (ksem_close(id) >= 0) {
  fail_err("ksem_close() didn't fail");
  return;
 }
 if (errno != error) {
  fail_errno("ksem_close");
  return;
 }
 pass();
}
