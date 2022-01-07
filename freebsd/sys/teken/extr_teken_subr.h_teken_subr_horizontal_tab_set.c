
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tp_col; } ;
struct TYPE_6__ {TYPE_1__ t_cursor; } ;
typedef TYPE_2__ teken_t ;


 int teken_tab_set (TYPE_2__*,int ) ;

__attribute__((used)) static void
teken_subr_horizontal_tab_set(teken_t *t)
{

 teken_tab_set(t, t->t_cursor.tp_col);
}
