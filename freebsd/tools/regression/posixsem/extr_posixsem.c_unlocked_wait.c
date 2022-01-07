
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int semid_t ;


 int ELAPSED (int ,int ) ;
 scalar_t__ checkvalue (int ,int ) ;
 int fail_err (char*,int ) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_destroy (int ) ;
 scalar_t__ ksem_init (int *,int) ;
 int pass () ;
 scalar_t__ testwait (int ,int *) ;

__attribute__((used)) static void
unlocked_wait(void)
{
 semid_t id;
 u_int elapsed;

 if (ksem_init(&id, 1) < 0) {
  fail_errno("ksem_init");
  return;
 }


 if (testwait(id, &elapsed) < 0) {
  ksem_destroy(id);
  return;
 }
 if (!ELAPSED(elapsed, 0)) {
  fail_err("ksem_wait() of unlocked sem took %ums", elapsed);
  ksem_destroy(id);
  return;
 }
 if (checkvalue(id, 0) < 0) {
  ksem_destroy(id);
  return;
 }

 if (ksem_destroy(id) < 0) {
  fail_errno("ksem_destroy");
  return;
 }
 pass();
}
