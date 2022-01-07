
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_row; int tp_col; } ;
typedef TYPE_1__ teken_pos_t ;
typedef int scr_stat ;


 int sc_move_cursor (int *,int ,int ) ;

__attribute__((used)) static void
scteken_cursor(void *arg, const teken_pos_t *p)
{
 scr_stat *scp = arg;

 sc_move_cursor(scp, p->tp_col, p->tp_row);
}
