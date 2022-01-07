
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ sp; int * stack; } ;


 int free (int *) ;
 int stack_free_value (int *) ;
 int stack_init (struct stack*) ;

void
stack_clear(struct stack *stack)
{

 while (stack->sp >= 0)
  stack_free_value(&stack->stack[stack->sp--]);
 free(stack->stack);
 stack_init(stack);
}
