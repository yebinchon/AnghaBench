
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cursor_pos; int cursor_oldpos; TYPE_1__* tsw; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_6__ {int (* te_clear ) (TYPE_2__*) ;} ;


 int sc_remove_cutmarking (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void
sc_clear_screen(scr_stat *scp)
{
 (*scp->tsw->te_clear)(scp);
 scp->cursor_oldpos = scp->cursor_pos;
 sc_remove_cutmarking(scp);
}
