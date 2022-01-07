
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;
typedef int register_t ;


 int curthread ;
 int stack_capture (int ,struct stack*,int ) ;

void
stack_save(struct stack *st)
{
 register_t fp;




 __asm __volatile("movq %%rbp,%0" : "=g" (fp));

 stack_capture(curthread, st, fp);
}
