
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int * array; int type; } ;
struct stack {int sp; TYPE_1__* stack; } ;
struct array {int dummy; } ;
struct TYPE_2__ {struct array* array; } ;


 int BCODE_NONE ;
 int array_assign (struct array*,size_t,struct value const*) ;
 struct array* array_new () ;
 int stack_push (struct stack*,struct value*) ;

void
frame_assign(struct stack *stack, size_t i, const struct value *v)
{
 struct array *a;
 struct value n;

 if (stack->sp == -1) {
  n.type = BCODE_NONE;
  n.array = ((void*)0);
  stack_push(stack, &n);
 }

 a = stack->stack[stack->sp].array;
 if (a == ((void*)0))
  a = stack->stack[stack->sp].array = array_new();
 array_assign(a, i, v);
}
