
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xsize; int ysize; int xpos; int ypos; int cursor_pos; } ;
typedef TYPE_1__ scr_stat ;



void
sc_move_cursor(scr_stat *scp, int x, int y)
{
 if (x < 0)
  x = 0;
 if (y < 0)
  y = 0;
 if (x >= scp->xsize)
  x = scp->xsize - 1;
 if (y >= scp->ysize)
  y = scp->ysize - 1;
 scp->xpos = x;
 scp->ypos = y;
 scp->cursor_pos = scp->ypos*scp->xsize + scp->xpos;
}
