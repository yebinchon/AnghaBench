
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int ENOENT ;
 int O_CREAT ;
 int O_RDONLY ;
 int TEST_PATH ;
 int fail_errno (char*) ;
 int ksem_close (int ) ;
 scalar_t__ ksem_open (int *,int ,int ,int,int) ;
 int ksem_open_should_fail (int ,int ,int,int,int ) ;
 scalar_t__ ksem_unlink (int ) ;

__attribute__((used)) static void
open_after_unlink(void)
{
 semid_t id;

 if (ksem_open(&id, TEST_PATH, O_CREAT, 0777, 1) < 0) {
  fail_errno("ksem_open(1)");
  return;
 }
 ksem_close(id);

 if (ksem_unlink(TEST_PATH) < 0) {
  fail_errno("ksem_unlink");
  return;
 }

 ksem_open_should_fail(TEST_PATH, O_RDONLY, 0777, 1, ENOENT);
}
