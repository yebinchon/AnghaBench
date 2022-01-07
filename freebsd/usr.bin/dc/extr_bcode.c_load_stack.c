
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct stack {int dummy; } ;
struct TYPE_2__ {struct stack* reg; } ;


 TYPE_1__ bmachine ;
 int push (struct value*) ;
 int readreg () ;
 struct value* stack_pop (struct stack*) ;
 scalar_t__ stack_size (struct stack*) ;
 int warnx (char*,int,int) ;

__attribute__((used)) static void
load_stack(void)
{
 struct stack *stack;
 struct value *value;
 int idx;

 idx = readreg();
 if (idx >= 0) {
  stack = &bmachine.reg[idx];
  value = ((void*)0);
  if (stack_size(stack) > 0) {
   value = stack_pop(stack);
  }
  if (value != ((void*)0))
   push(value);
  else
   warnx("stack register '%c' (0%o) is empty",
       idx, idx);
 }
}
