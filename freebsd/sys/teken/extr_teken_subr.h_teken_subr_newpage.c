
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ tp_col; int tp_row; } ;
struct TYPE_16__ {int ts_begin; int ts_end; } ;
struct TYPE_15__ {int tp_col; } ;
struct TYPE_18__ {int t_stateflags; TYPE_5__ t_cursor; TYPE_4__ t_originreg; int t_curattr; TYPE_3__ t_winsize; } ;
typedef TYPE_6__ teken_t ;
struct TYPE_14__ {int tp_col; int tp_row; } ;
struct TYPE_13__ {scalar_t__ tp_col; int tp_row; } ;
struct TYPE_19__ {TYPE_2__ tr_end; TYPE_1__ tr_begin; } ;
typedef TYPE_7__ teken_rect_t ;


 int BLANK ;
 int TS_CONS25 ;
 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_6__*) ;
 int teken_funcs_fill (TYPE_6__*,TYPE_7__*,int ,int *) ;
 int teken_subr_newline (TYPE_6__*) ;

__attribute__((used)) static void
teken_subr_newpage(teken_t *t)
{

 if (t->t_stateflags & TS_CONS25) {
  teken_rect_t tr;


  tr.tr_begin.tp_row = t->t_originreg.ts_begin;
  tr.tr_begin.tp_col = 0;
  tr.tr_end.tp_row = t->t_originreg.ts_end;
  tr.tr_end.tp_col = t->t_winsize.tp_col;
  teken_funcs_fill(t, &tr, BLANK, &t->t_curattr);


  t->t_cursor.tp_row = t->t_originreg.ts_begin;
  t->t_cursor.tp_col = 0;
  t->t_stateflags &= ~TS_WRAPPED;
  teken_funcs_cursor(t);
 } else {
  teken_subr_newline(t);
 }
}
