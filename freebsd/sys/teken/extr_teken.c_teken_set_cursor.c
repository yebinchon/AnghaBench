
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_6__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_7__ {TYPE_3__ t_cursor; TYPE_1__ t_winsize; } ;
typedef TYPE_2__ teken_t ;
typedef TYPE_3__ teken_pos_t ;


 int teken_assert (int) ;

void
teken_set_cursor(teken_t *t, const teken_pos_t *p)
{


 teken_assert(p->tp_row < t->t_winsize.tp_row);
 teken_assert(p->tp_col < t->t_winsize.tp_col);

 t->t_cursor = *p;
}
