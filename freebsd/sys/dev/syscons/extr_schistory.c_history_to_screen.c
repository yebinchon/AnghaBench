
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int history_pos; int ysize; int xsize; int vtb; int history; } ;
typedef TYPE_1__ scr_stat ;


 int mark_all (TYPE_1__*) ;
 int sc_vtb_copy (int ,int,int *,int,int) ;
 int sc_vtb_pos (int ,int,int) ;

__attribute__((used)) static void
history_to_screen(scr_stat *scp)
{
 int pos;
 int i;

 pos = scp->history_pos;
 for (i = 1; i <= scp->ysize; ++i) {
  pos = sc_vtb_pos(scp->history, pos, -scp->xsize);
  sc_vtb_copy(scp->history, pos,
       &scp->vtb, scp->xsize*(scp->ysize - i),
       scp->xsize);
 }
 mark_all(scp);
}
