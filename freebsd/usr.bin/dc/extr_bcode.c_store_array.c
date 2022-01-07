
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct value {int dummy; } ;
struct stack {int dummy; } ;
struct number {int number; } ;
struct TYPE_2__ {struct stack* reg; } ;


 scalar_t__ BN_is_negative (int ) ;
 int MAX_ARRAY_INDEX ;
 int ULONG_MAX ;
 TYPE_1__ bmachine ;
 int frame_assign (struct stack*,int ,struct value*) ;
 int free_number (struct number*) ;
 int get_ulong (struct number*) ;
 struct value* pop () ;
 struct number* pop_number () ;
 int readreg () ;
 int stack_free_value (struct value*) ;
 int warnx (char*) ;

__attribute__((used)) static void
store_array(void)
{
 struct number *inumber;
 struct value *value;
 struct stack *stack;
 u_long idx;
 int reg;

 reg = readreg();
 if (reg >= 0) {
  inumber = pop_number();
  if (inumber == ((void*)0))
   return;
  value = pop();
  if (value == ((void*)0)) {
   free_number(inumber);
   return;
  }
  idx = get_ulong(inumber);
  if (BN_is_negative(inumber->number)) {
   warnx("negative idx");
   stack_free_value(value);
  } else if (idx == ULONG_MAX || idx > MAX_ARRAY_INDEX) {
   warnx("idx too big");
   stack_free_value(value);
  } else {
   stack = &bmachine.reg[reg];
   frame_assign(stack, idx, value);
  }
  free_number(inumber);
 }
}
