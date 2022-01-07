
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct value {scalar_t__ type; } ;
struct stack {int dummy; } ;
struct number {int number; } ;
struct TYPE_2__ {struct stack* reg; } ;


 scalar_t__ BCODE_NONE ;
 scalar_t__ BN_is_negative (int ) ;
 int BN_zero (int ) ;
 int MAX_ARRAY_INDEX ;
 int ULONG_MAX ;
 TYPE_1__ bmachine ;
 int bn_check (int ) ;
 struct value* frame_retrieve (struct stack*,int ) ;
 int free_number (struct number*) ;
 int get_ulong (struct number*) ;
 struct number* new_number () ;
 struct number* pop_number () ;
 int push (int ) ;
 int push_number (struct number*) ;
 int readreg () ;
 int stack_dup_value (struct value*,struct value*) ;
 int warnx (char*) ;

__attribute__((used)) static void
load_array(void)
{
 struct number *inumber, *n;
 struct stack *stack;
 struct value *v;
 struct value copy;
 u_long idx;
 int reg;

 reg = readreg();
 if (reg >= 0) {
  inumber = pop_number();
  if (inumber == ((void*)0))
   return;
  idx = get_ulong(inumber);
  if (BN_is_negative(inumber->number))
   warnx("negative idx");
  else if (idx == ULONG_MAX || idx > MAX_ARRAY_INDEX)
   warnx("idx too big");
  else {
   stack = &bmachine.reg[reg];
   v = frame_retrieve(stack, idx);
   if (v == ((void*)0) || v->type == BCODE_NONE) {
    n = new_number();
    bn_check(BN_zero(n->number));
    push_number(n);
   }
   else
    push(stack_dup_value(v, &copy));
  }
  free_number(inumber);
 }
}
