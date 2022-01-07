
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tp_col; } ;
struct TYPE_7__ {int tp_col; } ;
struct TYPE_9__ {TYPE_2__ t_cursor; TYPE_1__ t_winsize; } ;
typedef TYPE_3__ teken_t ;


 int teken_funcs_cursor (TYPE_3__*) ;
 scalar_t__ teken_tab_isset (TYPE_3__*,int) ;

__attribute__((used)) static void
teken_subr_cursor_forward_tabulation(teken_t *t, unsigned int ntabs)
{

 do {

  if (t->t_cursor.tp_col == t->t_winsize.tp_col - 1)
   break;

  t->t_cursor.tp_col++;


  if (teken_tab_isset(t, t->t_cursor.tp_col))
   ntabs--;
 } while (ntabs > 0);

 teken_funcs_cursor(t);
}
