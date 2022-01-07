
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t t_curscs; int * t_scs; int t_saved_curscs; int t_curattr; int t_saved_curattr; int t_cursor; int t_saved_cursor; } ;
typedef TYPE_1__ teken_t ;



__attribute__((used)) static void
teken_subr_save_cursor(teken_t *t)
{

 t->t_saved_cursor = t->t_cursor;
 t->t_saved_curattr = t->t_curattr;
 t->t_saved_curscs = t->t_scs[t->t_curscs];
}
