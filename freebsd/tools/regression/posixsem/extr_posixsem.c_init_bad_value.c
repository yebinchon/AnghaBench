
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int UINT_MAX ;
 int ksem_init_should_fail (int ,int ) ;

__attribute__((used)) static void
init_bad_value(void)
{

 ksem_init_should_fail(UINT_MAX, EINVAL);
}
