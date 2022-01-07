
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int semid_t ;


 int ELAPSED (int ,int) ;
 scalar_t__ check_alarm (int) ;
 int fail_err (char*,int ) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_destroy (int ) ;
 scalar_t__ ksem_init (int *,int ) ;
 int pass () ;
 scalar_t__ schedule_post (int ,int) ;
 scalar_t__ testwait (int ,int *) ;

__attribute__((used)) static void
locked_wait(void)
{
 semid_t id;
 u_int elapsed;

 if (ksem_init(&id, 0) < 0) {
  fail_errno("ksem_init");
  return;
 }





 if (schedule_post(id, 1000) < 0) {
  ksem_destroy(id);
  return;
 }
 if (testwait(id, &elapsed) < 0) {
  check_alarm(1);
  ksem_destroy(id);
  return;
 }
 if (!ELAPSED(elapsed, 1000)) {
  fail_err(
     "ksem_wait() with delayed post took %ums instead of 1000ms",
      elapsed);
  check_alarm(1);
  ksem_destroy(id);
  return;
 }
 if (check_alarm(0) < 0) {
  ksem_destroy(id);
  return;
 }

 if (ksem_destroy(id) < 0) {
  fail_errno("ksem_destroy");
  return;
 }
 pass();
}
