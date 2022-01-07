
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ tp_row; int tp_col; } ;
struct TYPE_16__ {scalar_t__ ts_end; scalar_t__ ts_begin; } ;
struct TYPE_15__ {scalar_t__ tp_row; } ;
struct TYPE_20__ {int t_curattr; TYPE_5__ t_winsize; TYPE_2__ t_scrollreg; TYPE_1__ t_cursor; } ;
typedef TYPE_6__ teken_t ;
struct TYPE_18__ {scalar_t__ tp_row; int tp_col; } ;
struct TYPE_17__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_21__ {TYPE_4__ tr_end; TYPE_3__ tr_begin; } ;
typedef TYPE_7__ teken_rect_t ;
struct TYPE_22__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
typedef TYPE_8__ teken_pos_t ;


 int BLANK ;
 int teken_assert (int) ;
 int teken_funcs_copy (TYPE_6__ const*,TYPE_7__*,TYPE_8__*) ;
 int teken_funcs_fill (TYPE_6__ const*,TYPE_7__*,int ,int *) ;

__attribute__((used)) static void
teken_subr_do_scroll(const teken_t *t, int amount)
{
 teken_rect_t tr;
 teken_pos_t tp;

 teken_assert(t->t_cursor.tp_row <= t->t_winsize.tp_row);
 teken_assert(t->t_scrollreg.ts_end <= t->t_winsize.tp_row);
 teken_assert(amount != 0);


 if (amount > 0) {



  if (t->t_scrollreg.ts_begin + amount < t->t_scrollreg.ts_end) {
   tr.tr_begin.tp_row = t->t_scrollreg.ts_begin + amount;
   tr.tr_begin.tp_col = 0;
   tr.tr_end.tp_row = t->t_scrollreg.ts_end;
   tr.tr_end.tp_col = t->t_winsize.tp_col;
   tp.tp_row = t->t_scrollreg.ts_begin;
   tp.tp_col = 0;
   teken_funcs_copy(t, &tr, &tp);

   tr.tr_begin.tp_row = t->t_scrollreg.ts_end - amount;
  } else {
   tr.tr_begin.tp_row = t->t_scrollreg.ts_begin;
  }


  tr.tr_begin.tp_col = 0;
  tr.tr_end.tp_row = t->t_scrollreg.ts_end;
  tr.tr_end.tp_col = t->t_winsize.tp_col;
  teken_funcs_fill(t, &tr, BLANK, &t->t_curattr);
 } else {

  amount = -amount;


  if (t->t_scrollreg.ts_begin + amount < t->t_scrollreg.ts_end) {
   tr.tr_begin.tp_row = t->t_scrollreg.ts_begin;
   tr.tr_begin.tp_col = 0;
   tr.tr_end.tp_row = t->t_scrollreg.ts_end - amount;
   tr.tr_end.tp_col = t->t_winsize.tp_col;
   tp.tp_row = t->t_scrollreg.ts_begin + amount;
   tp.tp_col = 0;
   teken_funcs_copy(t, &tr, &tp);

   tr.tr_end.tp_row = t->t_scrollreg.ts_begin + amount;
  } else {
   tr.tr_end.tp_row = t->t_scrollreg.ts_end;
  }


  tr.tr_begin.tp_row = t->t_scrollreg.ts_begin;
  tr.tr_begin.tp_col = 0;
  tr.tr_end.tp_col = t->t_winsize.tp_col;
  teken_funcs_fill(t, &tr, BLANK, &t->t_curattr);
 }
}
