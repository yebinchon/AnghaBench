
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int * array; } ;
struct stack {int sp; struct value* stack; } ;


 int * array_dup (int *) ;
 int stack_free_value (struct value*) ;
 int stack_push (struct stack*,struct value*) ;

void
stack_set_tos(struct stack *stack, struct value *v)
{

 if (stack->sp == -1)
  stack_push(stack, v);
 else {
  stack_free_value(&stack->stack[stack->sp]);
  stack->stack[stack->sp] = *v;
  stack->stack[stack->sp].array = v->array == ((void*)0) ?
      ((void*)0) : array_dup(v->array);
 }
}
