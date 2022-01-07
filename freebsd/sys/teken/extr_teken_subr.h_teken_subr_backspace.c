
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_8__ {scalar_t__ tp_col; } ;
struct TYPE_7__ {scalar_t__ ts_begin; } ;
struct TYPE_10__ {int t_stateflags; TYPE_3__ t_cursor; TYPE_2__ t_winsize; TYPE_1__ t_originreg; } ;
typedef TYPE_4__ teken_t ;


 int TS_CONS25 ;
 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_4__*) ;

__attribute__((used)) static void
teken_subr_backspace(teken_t *t)
{

 if (t->t_stateflags & TS_CONS25) {
  if (t->t_cursor.tp_col == 0) {
   if (t->t_cursor.tp_row == t->t_originreg.ts_begin)
    return;
   t->t_cursor.tp_row--;
   t->t_cursor.tp_col = t->t_winsize.tp_col - 1;
  } else {
   t->t_cursor.tp_col--;
  }
 } else {
  if (t->t_cursor.tp_col == 0)
   return;

  t->t_cursor.tp_col--;
  t->t_stateflags &= ~TS_WRAPPED;
 }

 teken_funcs_cursor(t);
}
