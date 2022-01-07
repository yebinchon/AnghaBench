
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_3__ {scalar_t__ wc; int * ref; } ;
typedef TYPE_1__ collchar_t ;


 int INTERR ;
 int add_subst_pri (int ) ;
 size_t curr_weight ;
 TYPE_1__* get_collchar (scalar_t__,int) ;

void
add_subst_char(wchar_t wc)
{
 collchar_t *cc;


 if (((cc = get_collchar(wc, 1)) == ((void*)0)) ||
     (cc->wc != wc)) {
  INTERR;
  return;
 }

 add_subst_pri(cc->ref[curr_weight]);
}
