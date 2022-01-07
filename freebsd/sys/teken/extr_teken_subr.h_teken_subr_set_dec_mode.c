
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int tp_col; int tp_row; } ;
struct TYPE_8__ {int ts_begin; } ;
struct TYPE_10__ {int t_stateflags; TYPE_2__ t_cursor; TYPE_1__ t_scrollreg; TYPE_1__ t_originreg; } ;
typedef TYPE_3__ teken_t ;


 int TP_132COLS ;
 int TP_AUTOREPEAT ;
 int TP_MOUSE ;
 int TP_SHOWCURSOR ;
 int TS_AUTOWRAP ;
 int TS_CURSORKEYS ;
 int TS_ORIGIN ;
 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_3__*) ;
 int teken_funcs_param (TYPE_3__*,int ,int) ;
 int teken_printf (char*,...) ;
 int teken_subr_reset_to_initial_state (TYPE_3__*) ;

__attribute__((used)) static void
teken_subr_set_dec_mode(teken_t *t, unsigned int cmd)
{

 switch (cmd) {
 case 1:
  t->t_stateflags |= TS_CURSORKEYS;
  break;
 case 2:
  teken_printf("DECSET VT52\n");
  break;
 case 3:
  teken_funcs_param(t, TP_132COLS, 1);
  teken_subr_reset_to_initial_state(t);
  break;
 case 5:
  teken_printf("DECSET inverse video\n");
  break;
 case 6:
  t->t_stateflags |= TS_ORIGIN;
  t->t_originreg = t->t_scrollreg;
  t->t_cursor.tp_row = t->t_scrollreg.ts_begin;
  t->t_cursor.tp_col = 0;
  t->t_stateflags &= ~TS_WRAPPED;
  teken_funcs_cursor(t);
  break;
 case 7:
  t->t_stateflags |= TS_AUTOWRAP;
  break;
 case 8:
  teken_funcs_param(t, TP_AUTOREPEAT, 1);
  break;
 case 25:
  teken_funcs_param(t, TP_SHOWCURSOR, 1);
  break;
 case 40:
  teken_printf("DECSET allow 132\n");
  break;
 case 45:
  teken_printf("DECSET reverse wraparound\n");
  break;
 case 47:
  teken_printf("Switch away from alternate buffer\n");
  break;
 case 1000:
  teken_funcs_param(t, TP_MOUSE, 1);
  break;
 default:
  teken_printf("Unknown DECSET: %u\n", cmd);
 }
}
