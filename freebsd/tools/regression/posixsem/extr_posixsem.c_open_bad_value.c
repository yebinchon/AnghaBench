
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_CREAT ;
 int TEST_PATH ;
 int UINT_MAX ;
 int ksem_open_should_fail (int ,int ,int,int ,int ) ;
 int ksem_unlink (int ) ;

__attribute__((used)) static void
open_bad_value(void)
{

 (void)ksem_unlink(TEST_PATH);

 ksem_open_should_fail(TEST_PATH, O_CREAT, 0777, UINT_MAX, EINVAL);
}
