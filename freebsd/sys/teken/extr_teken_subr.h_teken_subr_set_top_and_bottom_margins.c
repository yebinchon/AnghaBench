
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned int tp_row; scalar_t__ tp_col; } ;
struct TYPE_8__ {unsigned int ts_begin; unsigned int ts_end; } ;
struct TYPE_7__ {unsigned int tp_row; } ;
struct TYPE_10__ {int t_stateflags; TYPE_3__ t_cursor; TYPE_2__ t_originreg; TYPE_2__ t_scrollreg; TYPE_1__ t_winsize; } ;
typedef TYPE_4__ teken_t ;


 int TS_ORIGIN ;
 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_4__*) ;

__attribute__((used)) static void
teken_subr_set_top_and_bottom_margins(teken_t *t, unsigned int top,
    unsigned int bottom)
{


 if (top > 0)
  top--;

 if (bottom == 0 || bottom > t->t_winsize.tp_row)
  bottom = t->t_winsize.tp_row;


 if (top >= bottom - 1) {
  top = 0;
  bottom = t->t_winsize.tp_row;
 }


 t->t_scrollreg.ts_begin = top;
 t->t_scrollreg.ts_end = bottom;
 if (t->t_stateflags & TS_ORIGIN)
  t->t_originreg = t->t_scrollreg;


 t->t_cursor.tp_row = t->t_originreg.ts_begin;
 t->t_cursor.tp_col = 0;
 t->t_stateflags &= ~TS_WRAPPED;
 teken_funcs_cursor(t);
}
