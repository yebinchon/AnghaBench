
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {TYPE_1__* num; } ;
struct value {int type; TYPE_2__ u; } ;
struct number {int number; } ;
struct TYPE_3__ {int scale; } ;





 int BN_set_word (int ,int ) ;
 int bn_check (int ) ;
 struct number* new_number () ;
 struct value* pop () ;
 int push_number (struct number*) ;
 int stack_free_value (struct value*) ;

__attribute__((used)) static void
push_scale(void)
{
 struct number *n;
 struct value *value;
 u_int scale = 0;

 value = pop();
 if (value != ((void*)0)) {
  switch (value->type) {
  case 130:
   return;
  case 129:
   scale = value->u.num->scale;
   break;
  case 128:
   break;
  }
  stack_free_value(value);
  n = new_number();
  bn_check(BN_set_word(n->number, scale));
  push_number(n);
 }
}
