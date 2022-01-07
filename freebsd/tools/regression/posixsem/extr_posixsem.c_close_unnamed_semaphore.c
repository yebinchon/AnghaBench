
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int EINVAL ;
 int fail_errno (char*) ;
 int ksem_close_should_fail (int ,int ) ;
 int ksem_destroy (int ) ;
 scalar_t__ ksem_init (int *,int) ;

__attribute__((used)) static void
close_unnamed_semaphore(void)
{
 semid_t id;

 if (ksem_init(&id, 1) < 0) {
  fail_errno("ksem_init");
  return;
 }

 ksem_close_should_fail(id, EINVAL);

 ksem_destroy(id);
}
