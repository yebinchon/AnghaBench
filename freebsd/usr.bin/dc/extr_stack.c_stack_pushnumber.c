
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stack {size_t sp; TYPE_2__* stack; } ;
struct number {int dummy; } ;
struct TYPE_3__ {struct number* num; } ;
struct TYPE_4__ {int * array; TYPE_1__ u; int type; } ;


 int BCODE_NUMBER ;
 int stack_grow (struct stack*) ;

void
stack_pushnumber(struct stack *stack, struct number *b)
{

 stack_grow(stack);
 stack->stack[stack->sp].type = BCODE_NUMBER;
 stack->stack[stack->sp].u.num = b;
 stack->stack[stack->sp].array = ((void*)0);
}
