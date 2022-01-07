
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct number {int dummy; } ;
struct TYPE_2__ {int scale; } ;


 TYPE_1__ bmachine ;
 int bmul_number (struct number*,struct number*,struct number*,int ) ;
 int free_number (struct number*) ;
 struct number* new_number () ;
 struct number* pop_number () ;
 int push_number (struct number*) ;

__attribute__((used)) static void
bmul(void)
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
 bmul_number(r, a, b, bmachine.scale);

 push_number(r);
 free_number(a);
 free_number(b);
}
