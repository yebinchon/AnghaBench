
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct number {int number; } ;
struct TYPE_2__ {int obase; } ;


 int BN_set_word (int ,int ) ;
 TYPE_1__ bmachine ;
 int bn_check (int ) ;
 struct number* new_number () ;
 int push_number (struct number*) ;

__attribute__((used)) static void
get_obase(void)
{
 struct number *n;

 n = new_number();
 bn_check(BN_set_word(n->number, bmachine.obase));
 push_number(n);
}
