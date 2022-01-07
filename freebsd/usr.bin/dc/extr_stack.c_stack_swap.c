
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct stack {int sp; struct value* stack; } ;


 int warnx (char*) ;

void
stack_swap(struct stack *stack)
{
 struct value copy;

 if (stack->sp < 1) {
  warnx("stack empty");
  return;
 }
 copy = stack->stack[stack->sp];
 stack->stack[stack->sp] = stack->stack[stack->sp-1];
 stack->stack[stack->sp-1] = copy;
}
