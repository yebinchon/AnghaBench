
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int EINVAL ;
 int O_CREAT ;
 int TEST_PATH ;
 int fail_errno (char*) ;
 int ksem_close (int ) ;
 int ksem_destroy_should_fail (int ,int ) ;
 scalar_t__ ksem_open (int *,int ,int ,int,int) ;
 int ksem_unlink (int ) ;

__attribute__((used)) static void
destroy_named_semaphore(void)
{
 semid_t id;

 if (ksem_open(&id, TEST_PATH, O_CREAT, 0777, 1) < 0) {
  fail_errno("ksem_open(O_CREAT)");
  return;
 }

 ksem_destroy_should_fail(id, EINVAL);

 ksem_close(id);
 ksem_unlink(TEST_PATH);
}
