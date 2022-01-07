
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __stack_chk_fail () ;

void
__stack_chk_fail_local(void)
{

 __stack_chk_fail();
}
