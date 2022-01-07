
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct number {int number; } ;
struct TYPE_2__ {int stack; } ;


 int BN_set_word (int ,size_t) ;
 TYPE_1__ bmachine ;
 int bn_check (int ) ;
 struct number* new_number () ;
 int push_number (struct number*) ;
 size_t stack_size (int *) ;

__attribute__((used)) static void
stackdepth(void)
{
 struct number *n;
 size_t i;

 i = stack_size(&bmachine.stack);
 n = new_number();
 bn_check(BN_set_word(n->number, i));
 push_number(n);
}
