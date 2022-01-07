
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tp_row; } ;
struct TYPE_7__ {int ts_end; } ;
struct TYPE_9__ {int t_stateflags; TYPE_2__ t_cursor; TYPE_1__ t_scrollreg; } ;
typedef TYPE_3__ teken_t ;


 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_3__*) ;
 int teken_subr_do_scroll (TYPE_3__*,int) ;

__attribute__((used)) static void
teken_subr_index(teken_t *t)
{

 if (t->t_cursor.tp_row < t->t_scrollreg.ts_end - 1) {
  t->t_cursor.tp_row++;
  t->t_stateflags &= ~TS_WRAPPED;
  teken_funcs_cursor(t);
 } else {
  teken_subr_do_scroll(t, 1);
 }
}
