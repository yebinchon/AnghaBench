
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct number {int number; } ;


 int BCODE_NOT_GREATER ;
 int BN_set_word (int ,int) ;
 int bn_check (int ) ;
 scalar_t__ compare_numbers (int ,struct number*,struct number*) ;
 struct number* new_number () ;
 struct number* pop_number () ;
 int push_number (struct number*) ;

__attribute__((used)) static void
lesseq_numbers(void)
{
 struct number *a, *b, *r;

 a = pop_number();
 if (a == ((void*)0))
  return;
 b = pop_number();
 if (b == ((void*)0)) {
  push_number(a);
  return;
 }
 r = new_number();
 bn_check(BN_set_word(r->number,
     compare_numbers(BCODE_NOT_GREATER, a, b) ? 1 : 0));
 push_number(r);
}
