
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mouse_oldpos; int xsize; int ysize; int sc; int status; int font_size; int font_width; int mouse_oldypos; int mouse_oldxpos; TYPE_1__* rndr; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_7__ {int (* draw_mouse ) (TYPE_2__*,int ,int ,int ) ;} ;


 int FALSE ;
 scalar_t__ ISGRAPHSC (TYPE_2__*) ;
 int MOUSE_VISIBLE ;
 int SC_VIDEO_LOCK (int ) ;
 int SC_VIDEO_UNLOCK (int ) ;
 int howmany (int,int ) ;
 int imax (int,int) ;
 int imin (int,int) ;
 int mark_for_update (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*,int ,int ,int ) ;

void
sc_remove_mouse_image(scr_stat *scp)
{
    int cols, i, rows;

    if (ISGRAPHSC(scp))
 return;

    SC_VIDEO_LOCK(scp->sc);
    (*scp->rndr->draw_mouse)(scp, scp->mouse_oldxpos, scp->mouse_oldypos,
        FALSE);
    i = scp->mouse_oldpos;
    mark_for_update(scp, i);
    mark_for_update(scp, i);
    cols = 1 + howmany(10 - 1, scp->font_width);
    cols = imax(cols, 2);
    cols = imin(cols, scp->xsize - i % scp->xsize);
    rows = 1 + howmany(16 - 1, scp->font_size);
    rows = imax(rows, 2);
    rows = imin(rows, scp->ysize - i / scp->xsize);
    mark_for_update(scp, i + (rows - 1) * scp->xsize + cols - 1);
    scp->status &= ~MOUSE_VISIBLE;
    SC_VIDEO_UNLOCK(scp->sc);
}
