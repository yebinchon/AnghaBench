
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {size_t sp; } ;



size_t
stack_size(const struct stack *stack)
{

 return (stack->sp + 1);
}
