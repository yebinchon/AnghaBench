
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int tp_col; int tp_row; } ;
struct TYPE_14__ {int tp_col; int tp_row; } ;
struct TYPE_11__ {int ts_end; } ;
struct TYPE_13__ {int t_stateflags; TYPE_2__ t_winsize; TYPE_4__ t_cursor; TYPE_1__ t_scrollreg; } ;
typedef TYPE_3__ teken_t ;
typedef TYPE_4__ teken_pos_t ;
typedef int teken_char_t ;


 int TS_8BIT ;
 int TS_AUTOWRAP ;
 int TS_CONS25 ;
 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_3__*) ;
 int teken_scs_process (TYPE_3__*,int) ;
 int teken_subr_do_putchar (TYPE_3__*,TYPE_4__*,int,int) ;
 int teken_subr_do_scroll (TYPE_3__*,int) ;
 int teken_wcwidth (int) ;

__attribute__((used)) static void
teken_subr_regular_character(teken_t *t, teken_char_t c)
{
 int width;

 if (t->t_stateflags & TS_8BIT) {
  if (!(t->t_stateflags & TS_CONS25) && (c <= 0x1b || c == 0x7f))
   return;
  c = teken_scs_process(t, c);
  width = 1;
 } else {
  c = teken_scs_process(t, c);
  width = teken_wcwidth(c);

  if (width <= 0)
   return;
 }

 if (t->t_stateflags & TS_CONS25) {
  teken_subr_do_putchar(t, &t->t_cursor, c, width);
  t->t_cursor.tp_col += width;

  if (t->t_cursor.tp_col >= t->t_winsize.tp_col) {
   if (t->t_cursor.tp_row == t->t_scrollreg.ts_end - 1) {

    teken_subr_do_scroll(t, 1);
   } else {

    if (t->t_cursor.tp_row <
        t->t_winsize.tp_row - 1)
     t->t_cursor.tp_row++;
   }
   t->t_cursor.tp_col = 0;
  }
 } else if (t->t_stateflags & TS_AUTOWRAP &&
     ((t->t_stateflags & TS_WRAPPED &&
     t->t_cursor.tp_col + 1 == t->t_winsize.tp_col) ||
     t->t_cursor.tp_col + width > t->t_winsize.tp_col)) {
  teken_pos_t tp;







  if (t->t_cursor.tp_row == t->t_scrollreg.ts_end - 1) {

   teken_subr_do_scroll(t, 1);
   tp.tp_row = t->t_scrollreg.ts_end - 1;
  } else {

   tp.tp_row = t->t_cursor.tp_row + 1;
   if (tp.tp_row == t->t_winsize.tp_row) {





    teken_subr_do_putchar(t, &t->t_cursor,
        c, width);
    return;
   }
  }

  tp.tp_col = 0;
  teken_subr_do_putchar(t, &tp, c, width);

  t->t_cursor.tp_row = tp.tp_row;
  t->t_cursor.tp_col = width;
  t->t_stateflags &= ~TS_WRAPPED;
 } else {

  teken_subr_do_putchar(t, &t->t_cursor, c, width);
  t->t_cursor.tp_col += width;

  if (t->t_cursor.tp_col >= t->t_winsize.tp_col) {
   t->t_stateflags |= TS_WRAPPED;
   t->t_cursor.tp_col = t->t_winsize.tp_col - 1;
  } else {
   t->t_stateflags &= ~TS_WRAPPED;
  }
 }

 teken_funcs_cursor(t);
}
