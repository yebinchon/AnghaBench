
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct number {scalar_t__ scale; int number; } ;


 int BN_sub (int ,int ,int ) ;
 int bn_check (int ) ;
 int free_number (struct number*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 struct number* new_number () ;
 int normalize (struct number*,scalar_t__) ;
 struct number* pop_number () ;
 int push_number (struct number*) ;

__attribute__((used)) static void
bsub(void)
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

 r->scale = max(a->scale, b->scale);
 if (r->scale > a->scale)
  normalize(a, r->scale);
 else if (r->scale > b->scale)
  normalize(b, r->scale);
 bn_check(BN_sub(r->number, b->number, a->number));
 push_number(r);
 free_number(a);
 free_number(b);
}
