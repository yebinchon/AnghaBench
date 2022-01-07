
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int * ref; } ;
typedef TYPE_1__ collchar_t ;


 int INTERR ;
 int add_order_pri (int ) ;
 size_t curr_weight ;
 TYPE_1__* get_collchar (int ,int) ;

void
add_order_char(wchar_t wc)
{
 collchar_t *cc;

 if ((cc = get_collchar(wc, 1)) == ((void*)0)) {
  INTERR;
  return;
 }

 add_order_pri(cc->ref[curr_weight]);
}
