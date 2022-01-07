
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int EOVERFLOW ;
 int SEM_VALUE_MAX ;
 int fail_errno (char*) ;
 int ksem_destroy (int ) ;
 scalar_t__ ksem_init (int *,int ) ;
 int ksem_post_should_fail (int ,int ) ;

__attribute__((used)) static void
maxvalue_post_test(void)
{
 semid_t id;

 if (ksem_init(&id, SEM_VALUE_MAX) < 0) {
  fail_errno("ksem_init");
  return;
 }

 ksem_post_should_fail(id, EOVERFLOW);

 ksem_destroy(id);
}
