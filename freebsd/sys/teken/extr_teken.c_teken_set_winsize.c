
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_winsize; } ;
typedef TYPE_1__ teken_t ;
typedef int teken_pos_t ;


 int teken_subr_do_reset (TYPE_1__*) ;
 int teken_trim_cursor_pos (TYPE_1__*,int const*) ;

void
teken_set_winsize(teken_t *t, const teken_pos_t *p)
{

 teken_trim_cursor_pos(t, p);
 t->t_winsize = *p;
 teken_subr_do_reset(t);
}
