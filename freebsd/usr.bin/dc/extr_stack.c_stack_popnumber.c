
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stack {size_t sp; TYPE_2__* stack; } ;
struct number {int dummy; } ;
struct TYPE_3__ {struct number* num; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ u; int * array; } ;


 scalar_t__ BCODE_NUMBER ;
 int array_free (int *) ;
 scalar_t__ stack_empty (struct stack*) ;
 int warnx (char*) ;

struct number *
stack_popnumber(struct stack *stack)
{

 if (stack_empty(stack))
  return (((void*)0));
 array_free(stack->stack[stack->sp].array);
 stack->stack[stack->sp].array = ((void*)0);
 if (stack->stack[stack->sp].type != BCODE_NUMBER) {
  warnx("not a number");
  return (((void*)0));
 }
 return stack->stack[stack->sp--].u.num;
}
