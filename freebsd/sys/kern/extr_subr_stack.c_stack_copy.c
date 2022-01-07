
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;



void
stack_copy(const struct stack *src, struct stack *dst)
{

 *dst = *src;
}
