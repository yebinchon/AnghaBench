
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct stack {int sp; struct value* stack; } ;


 scalar_t__ stack_empty (struct stack*) ;

struct value *
stack_pop(struct stack *stack)
{

 if (stack_empty(stack))
  return (((void*)0));
 return &stack->stack[stack->sp--];
}
