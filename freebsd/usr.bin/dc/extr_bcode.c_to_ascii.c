
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; struct number* num; } ;
struct value {int type; TYPE_1__ u; } ;
struct number {int number; } ;





 scalar_t__ BN_get_word (int ) ;
 int BN_mask_bits (int ,int) ;
 int BN_num_bits (int ) ;
 int bn_check (int ) ;
 int bstrdup (char*) ;
 int normalize (struct number*,int ) ;
 struct value* pop () ;
 int push_string (int ) ;
 int stack_free_value (struct value*) ;

__attribute__((used)) static void
to_ascii(void)
{
 struct number *n;
 struct value *value;
 char str[2];

 value = pop();
 if (value != ((void*)0)) {
  str[1] = '\0';
  switch (value->type) {
  case 130:
   return;
  case 129:
   n = value->u.num;
   normalize(n, 0);
   if (BN_num_bits(n->number) > 8)
    bn_check(BN_mask_bits(n->number, 8));
   str[0] = (char)BN_get_word(n->number);
   break;
  case 128:
   str[0] = value->u.string[0];
   break;
  }
  stack_free_value(value);
  push_string(bstrdup(str));
 }
}
