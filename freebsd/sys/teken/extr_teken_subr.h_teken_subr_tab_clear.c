
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tp_col; } ;
struct TYPE_6__ {int t_tabstops; TYPE_1__ t_cursor; } ;
typedef TYPE_2__ teken_t ;


 int T_NUMCOL ;
 int memset (int ,int ,int) ;
 int teken_tab_clear (TYPE_2__*,int ) ;

__attribute__((used)) static void
teken_subr_tab_clear(teken_t *t, unsigned int cmd)
{

 switch (cmd) {
 case 0:
  teken_tab_clear(t, t->t_cursor.tp_col);
  break;
 case 3:
  memset(t->t_tabstops, 0, T_NUMCOL / 8);
  break;
 default:
  break;
 }
}
