
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;


 int bzero (struct stack*,int) ;

void
stack_zero(struct stack *st)
{

 bzero(st, sizeof *st);
}
