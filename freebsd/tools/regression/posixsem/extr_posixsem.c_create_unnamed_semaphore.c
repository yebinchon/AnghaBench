
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int fail_errno (char*) ;
 scalar_t__ ksem_destroy (int ) ;
 scalar_t__ ksem_init (int *,int) ;
 int pass () ;

__attribute__((used)) static void
create_unnamed_semaphore(void)
{
 semid_t id;

 if (ksem_init(&id, 1) < 0) {
  fail_errno("ksem_init");
  return;
 }

 if (ksem_destroy(id) < 0) {
  fail_errno("ksem_destroy");
  return;
 }
 pass();
}
