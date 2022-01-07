
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int sp; int * stack; scalar_t__ size; } ;



void
stack_init(struct stack *stack)
{

 stack->size = 0;
 stack->sp = -1;
 stack->stack = ((void*)0);
}
