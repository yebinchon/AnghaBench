
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ checkvalue (int ,int ) ;
 scalar_t__ errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_destroy (int ) ;
 scalar_t__ ksem_init (int *,int ) ;
 scalar_t__ ksem_trywait (int ) ;
 int pass () ;

__attribute__((used)) static void
locked_trywait(void)
{
 semid_t id;

 if (ksem_init(&id, 0) < 0) {
  fail_errno("ksem_init");
  return;
 }


 if (ksem_trywait(id) >= 0) {
  fail_err("ksem_trywait() didn't fail");
  ksem_destroy(id);
  return;
 }
 if (errno != EAGAIN) {
  fail_errno("wrong error from ksem_trywait()");
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
