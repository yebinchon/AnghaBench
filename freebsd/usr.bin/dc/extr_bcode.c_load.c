
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct number {int number; } ;
struct TYPE_2__ {int * reg; } ;


 int BN_zero (int ) ;
 TYPE_1__ bmachine ;
 int bn_check (int ) ;
 struct number* new_number () ;
 int push (int ) ;
 int push_number (struct number*) ;
 int readreg () ;
 int stack_dup_value (struct value*,struct value*) ;
 struct value* stack_tos (int *) ;

__attribute__((used)) static void
load(void)
{
 struct number *n;
 struct value *v;
 struct value copy;
 int idx;

 idx = readreg();
 if (idx >= 0) {
  v = stack_tos(&bmachine.reg[idx]);
  if (v == ((void*)0)) {
   n = new_number();
   bn_check(BN_zero(n->number));
   push_number(n);
  } else
   push(stack_dup_value(v, &copy));
 }
}
