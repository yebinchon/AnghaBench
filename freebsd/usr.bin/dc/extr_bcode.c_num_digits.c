
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; int num; } ;
struct value {int type; TYPE_1__ u; } ;
struct number {int number; } ;





 int BN_set_word (int ,size_t) ;
 int bn_check (int ) ;
 size_t count_digits (int ) ;
 struct number* new_number () ;
 struct value* pop () ;
 int push_number (struct number*) ;
 int stack_free_value (struct value*) ;
 size_t strlen (int ) ;

__attribute__((used)) static void
num_digits(void)
{
 struct number *n = ((void*)0);
 struct value *value;
 size_t digits;

 value = pop();
 if (value != ((void*)0)) {
  switch (value->type) {
  case 130:
   return;
  case 129:
   digits = count_digits(value->u.num);
   n = new_number();
   bn_check(BN_set_word(n->number, digits));
   break;
  case 128:
   digits = strlen(value->u.string);
   n = new_number();
   bn_check(BN_set_word(n->number, digits));
   break;
  }
  stack_free_value(value);
  push_number(n);
 }
}
