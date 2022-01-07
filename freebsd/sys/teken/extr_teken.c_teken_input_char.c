
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_20__ {scalar_t__ ts_begin; scalar_t__ ts_end; } ;
struct TYPE_19__ {scalar_t__ ts_end; scalar_t__ ts_begin; } ;
struct TYPE_18__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_17__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_22__ {int t_stateflags; int t_curscs; TYPE_5__ t_winsize; TYPE_4__ t_originreg; TYPE_3__ t_scrollreg; TYPE_2__ t_saved_cursor; TYPE_1__ t_cursor; int (* t_nextstate ) (TYPE_6__*,int) ;} ;
typedef TYPE_6__ teken_t ;
typedef int teken_char_t ;


 int TS_CONS25 ;
 int TS_INSTRING ;
 int stub1 (TYPE_6__*,int) ;
 int stub2 (TYPE_6__*,int) ;
 int stub3 (TYPE_6__*,int) ;
 int teken_assert (int) ;
 int teken_subr_backspace (TYPE_6__*) ;
 int teken_subr_bell (TYPE_6__*) ;
 int teken_subr_carriage_return (TYPE_6__*) ;
 int teken_subr_horizontal_tab (TYPE_6__*) ;
 int teken_subr_newline (TYPE_6__*) ;
 int teken_subr_newpage (TYPE_6__*) ;

__attribute__((used)) static void
teken_input_char(teken_t *t, teken_char_t c)
{






 if (t->t_stateflags & TS_INSTRING) {
  switch (c) {
  case '\x1B':
   t->t_stateflags &= ~TS_INSTRING;
   break;
  case '\a':
   t->t_stateflags &= ~TS_INSTRING;
   return;
  default:
   return;
  }
 }

 switch (c) {
 case '\0':
  break;
 case '\a':
  teken_subr_bell(t);
  break;
 case '\b':
  teken_subr_backspace(t);
  break;
 case '\n':
 case '\x0B':
  teken_subr_newline(t);
  break;
 case '\x0C':
  teken_subr_newpage(t);
  break;
 case '\x0E':
  if (t->t_stateflags & TS_CONS25)
   t->t_nextstate(t, c);
  else
   t->t_curscs = 1;
  break;
 case '\x0F':
  if (t->t_stateflags & TS_CONS25)
   t->t_nextstate(t, c);
  else
   t->t_curscs = 0;
  break;
 case '\r':
  teken_subr_carriage_return(t);
  break;
 case '\t':
  teken_subr_horizontal_tab(t);
  break;
 default:
  t->t_nextstate(t, c);
  break;
 }


 teken_assert(t->t_cursor.tp_row >= t->t_originreg.ts_begin);
 teken_assert(t->t_cursor.tp_row < t->t_originreg.ts_end);
 teken_assert(t->t_cursor.tp_row < t->t_winsize.tp_row);
 teken_assert(t->t_cursor.tp_col < t->t_winsize.tp_col);
 teken_assert(t->t_saved_cursor.tp_row < t->t_winsize.tp_row);
 teken_assert(t->t_saved_cursor.tp_col < t->t_winsize.tp_col);
 teken_assert(t->t_scrollreg.ts_end <= t->t_winsize.tp_row);
 teken_assert(t->t_scrollreg.ts_begin < t->t_scrollreg.ts_end);

 teken_assert((t->t_originreg.ts_begin == t->t_scrollreg.ts_begin &&
     t->t_originreg.ts_end == t->t_scrollreg.ts_end) ||
     (t->t_originreg.ts_begin == 0 &&
     t->t_originreg.ts_end == t->t_winsize.tp_row));
}
