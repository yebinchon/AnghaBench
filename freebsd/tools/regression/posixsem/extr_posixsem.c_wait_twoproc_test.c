
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int CSTAT_CLASS (int) ;
 int CSTAT_ERROR (int) ;
 int O_CREAT ;
 int TEST_PATH ;
 int check_alarm (int) ;
 scalar_t__ child_worker (int ,int *,int*) ;
 int errno ;
 int fail_err (char*,int) ;
 int fail_errno (char*) ;
 int ksem_close (int ) ;
 scalar_t__ ksem_open (int *,int ,int ,int,int ) ;
 int ksem_unlink (int ) ;
 int pass () ;
 scalar_t__ schedule_post (int ,int) ;
 int wait_twoproc_child ;

__attribute__((used)) static void
wait_twoproc_test(void)
{
 semid_t id;
 int stat;

 if (ksem_open(&id, TEST_PATH, O_CREAT, 0777, 0)) {
  fail_errno("ksem_open");
  return;
 }

 if (schedule_post(id, 500) < 0) {
  ksem_close(id);
  ksem_unlink(TEST_PATH);
  return;
 }

 if (child_worker(wait_twoproc_child, ((void*)0), &stat) < 0) {
  check_alarm(1);
  ksem_close(id);
  ksem_unlink(TEST_PATH);
  return;
 }

 errno = CSTAT_ERROR(stat);
 switch (CSTAT_CLASS(stat)) {
 case 0:
  pass();
  break;
 case 1:
  fail_errno("child ksem_open()");
  break;
 case 2:
  fail_errno("child ksem_wait()");
  break;
 case 3:
  fail_errno("child ksem_close()");
  break;
 default:
  fail_err("bad child state %#x", stat);
  break;
 }

 check_alarm(1);
 ksem_close(id);
 ksem_unlink(TEST_PATH);
}
