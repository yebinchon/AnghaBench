
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tp_row; } ;
struct TYPE_8__ {scalar_t__ ts_begin; scalar_t__ ts_end; } ;
struct TYPE_7__ {scalar_t__ tp_row; } ;
struct TYPE_10__ {size_t t_curscs; TYPE_3__ t_winsize; TYPE_2__ t_originreg; int t_stateflags; TYPE_1__ t_cursor; int t_saved_curscs; int * t_scs; int t_saved_curattr; int t_curattr; TYPE_1__ t_saved_cursor; } ;
typedef TYPE_4__ teken_t ;


 int TS_ORIGIN ;
 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_4__*) ;

__attribute__((used)) static void
teken_subr_restore_cursor(teken_t *t)
{

 t->t_cursor = t->t_saved_cursor;
 t->t_curattr = t->t_saved_curattr;
 t->t_scs[t->t_curscs] = t->t_saved_curscs;
 t->t_stateflags &= ~TS_WRAPPED;


 if (t->t_cursor.tp_row < t->t_originreg.ts_begin ||
     t->t_cursor.tp_row >= t->t_originreg.ts_end) {
  t->t_stateflags &= ~TS_ORIGIN;
  t->t_originreg.ts_begin = 0;
  t->t_originreg.ts_end = t->t_winsize.tp_row;
 }

 teken_funcs_cursor(t);
}
