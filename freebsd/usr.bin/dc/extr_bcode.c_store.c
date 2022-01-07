
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {int * reg; } ;


 TYPE_1__ bmachine ;
 struct value* pop () ;
 int readreg () ;
 int stack_set_tos (int *,struct value*) ;

__attribute__((used)) static void
store(void)
{
 struct value *val;
 int idx;

 idx = readreg();
 if (idx >= 0) {
  val = pop();
  if (val == ((void*)0)) {
   return;
  }
  stack_set_tos(&bmachine.reg[idx], val);
 }
}
