
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int SEM_VALUE_MAX ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_destroy (int ) ;
 scalar_t__ ksem_getvalue (int ,int*) ;
 scalar_t__ ksem_init (int *,int) ;
 int pass () ;

__attribute__((used)) static void
maxvalue_test(void)
{
 semid_t id;
 int val;

 if (ksem_init(&id, SEM_VALUE_MAX) < 0) {
  fail_errno("ksem_init");
  return;
 }
 if (ksem_getvalue(id, &val) < 0) {
  fail_errno("ksem_getvalue");
  ksem_destroy(id);
  return;
 }
 if (val != SEM_VALUE_MAX) {
  fail_err("value %d != SEM_VALUE_MAX");
  ksem_destroy(id);
  return;
 }
 if (val < 0) {
  fail_err("value < 0");
  ksem_destroy(id);
  return;
 }
 if (ksem_destroy(id) < 0) {
  fail_errno("ksem_destroy");
  return;
 }
 pass();
}
