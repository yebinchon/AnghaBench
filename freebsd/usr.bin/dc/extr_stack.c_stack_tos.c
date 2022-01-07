
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct stack {int sp; struct value* stack; } ;



struct value *
stack_tos(const struct stack *stack)
{

 if (stack->sp == -1)
  return (((void*)0));
 return &stack->stack[stack->sp];
}
