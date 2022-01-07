
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int tp_col; } ;
struct TYPE_6__ {unsigned int tp_col; } ;
struct TYPE_8__ {int t_stateflags; TYPE_2__ t_winsize; TYPE_1__ t_cursor; } ;
typedef TYPE_3__ teken_t ;


 int TS_WRAPPED ;
 int teken_funcs_cursor (TYPE_3__*) ;

__attribute__((used)) static void
teken_subr_horizontal_position_absolute(teken_t *t, unsigned int col)
{

 col--;
 t->t_cursor.tp_col = col < t->t_winsize.tp_col ?
     col : t->t_winsize.tp_col - 1;

 t->t_stateflags &= ~TS_WRAPPED;
 teken_funcs_cursor(t);
}
