
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int O_CREAT ;
 int O_EXCL ;
 int TEST_PATH ;
 scalar_t__ checkvalue (int ,int) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_close (int ) ;
 scalar_t__ ksem_open (int *,int ,int,int,int) ;
 scalar_t__ ksem_post (int ) ;
 scalar_t__ ksem_unlink (int ) ;
 scalar_t__ ksem_wait (int ) ;
 int pass () ;

__attribute__((used)) static void
use_after_unlink_test(void)
{
 semid_t id;





 if (ksem_open(&id, TEST_PATH, O_CREAT | O_EXCL, 0777, 1) < 0) {
  fail_errno("ksem_open(O_CREAT | O_EXCL)");
  return;
 }
 if (ksem_unlink(TEST_PATH) < 0) {
  fail_errno("ksem_unlink");
  ksem_close(id);
  return;
 }
 if (checkvalue(id, 1) < 0) {
  ksem_close(id);
  return;
 }


 if (ksem_post(id) < 0) {
  fail_errno("ksem_post");
  ksem_close(id);
  return;
 }
 if (checkvalue(id, 2) < 0) {
  ksem_close(id);
  return;
 }


 if (ksem_wait(id) < 0) {
  fail_errno("ksem_wait");
  ksem_close(id);
  return;
 }
 if (checkvalue(id, 1) < 0) {
  ksem_close(id);
  return;
 }

 if (ksem_close(id) < 0) {
  fail_errno("ksem_close");
  return;
 }
 pass();
}
