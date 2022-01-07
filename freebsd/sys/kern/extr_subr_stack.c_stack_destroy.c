
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;


 int M_STACK ;
 int free (struct stack*,int ) ;

void
stack_destroy(struct stack *st)
{

 free(st, M_STACK);
}
