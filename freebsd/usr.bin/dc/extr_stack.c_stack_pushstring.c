
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stack {size_t sp; TYPE_2__* stack; } ;
struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {int * array; TYPE_1__ u; int type; } ;


 int BCODE_STRING ;
 int stack_grow (struct stack*) ;

void
stack_pushstring(struct stack *stack, char *string)
{

 stack_grow(stack);
 stack->stack[stack->sp].type = BCODE_STRING;
 stack->stack[stack->sp].u.string = string;
 stack->stack[stack->sp].array = ((void*)0);
}
