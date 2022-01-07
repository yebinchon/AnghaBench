
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_DIRECT ;
 int O_RDONLY ;
 int TEST_PATH ;
 int ksem_open_should_fail (int ,int,int,int,int ) ;

__attribute__((used)) static void
open_extra_flags(void)
{

 ksem_open_should_fail(TEST_PATH, O_RDONLY | O_DIRECT, 0777, 1, EINVAL);
}
