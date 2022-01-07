
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ref; } ;
typedef TYPE_1__ collundef_t ;


 int INTERR ;
 int add_order_pri (int ) ;
 size_t curr_weight ;
 TYPE_1__* get_collundef (char*) ;

void
add_order_symbol(char *sym)
{
 collundef_t *c;
 if ((c = get_collundef(sym)) == ((void*)0)) {
  INTERR;
  return;
 }
 add_order_pri(c->ref[curr_weight]);
}
