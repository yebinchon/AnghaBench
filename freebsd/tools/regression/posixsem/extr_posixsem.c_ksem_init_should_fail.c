
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 int ksem_destroy (int ) ;
 scalar_t__ ksem_init (int *,unsigned int) ;
 int pass () ;

__attribute__((used)) static void
ksem_init_should_fail(unsigned int value, int error)
{
 semid_t id;

 if (ksem_init(&id, value) >= 0) {
  fail_err("ksem_init() didn't fail");
  ksem_destroy(id);
  return;
 }
 if (errno != error) {
  fail_errno("ksem_init");
  return;
 }
 pass();
}
