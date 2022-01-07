
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct stack {int dummy; } ;


 int stack_dup_value (struct value*,struct value*) ;
 int stack_push (struct stack*,int ) ;
 struct value* stack_tos (struct stack*) ;
 int warnx (char*) ;

void
stack_dup(struct stack *stack)
{
 struct value *value;
 struct value copy;

 value = stack_tos(stack);
 if (value == ((void*)0)) {
  warnx("stack empty");
  return;
 }
 stack_push(stack, stack_dup_value(value, &copy));
}
