
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int O_CREAT ;
 int TEST_PATH ;
 int fail_errno (char*) ;
 scalar_t__ ksem_close (int ) ;
 scalar_t__ ksem_open (int *,int ,int ,int,int) ;
 scalar_t__ ksem_unlink (int ) ;
 int pass () ;

__attribute__((used)) static void
open_named_semaphore(void)
{
 semid_t id;

 if (ksem_open(&id, TEST_PATH, O_CREAT, 0777, 1) < 0) {
  fail_errno("ksem_open(O_CREAT)");
  return;
 }

 if (ksem_close(id) < 0) {
  fail_errno("ksem_close");
  return;
 }

 if (ksem_unlink(TEST_PATH) < 0) {
  fail_errno("ksem_unlink");
  return;
 }
 pass();
}
