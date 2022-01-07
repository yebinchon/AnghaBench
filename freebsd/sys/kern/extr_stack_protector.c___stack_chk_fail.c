
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

void
__stack_chk_fail(void)
{

 panic("stack overflow detected; backtrace may be corrupted");
}
