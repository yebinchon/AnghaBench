
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sc; int status; int mouse_ypos; int mouse_oldypos; int mouse_xpos; int mouse_oldxpos; int mouse_pos; int mouse_oldpos; TYPE_1__* rndr; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_6__ {int (* draw_mouse ) (TYPE_2__*,int ,int ,int ) ;} ;


 scalar_t__ ISGRAPHSC (TYPE_2__*) ;
 int MOUSE_VISIBLE ;
 int SC_VIDEO_LOCK (int ) ;
 int SC_VIDEO_UNLOCK (int ) ;
 int TRUE ;
 int stub1 (TYPE_2__*,int ,int ,int ) ;

void
sc_draw_mouse_image(scr_stat *scp)
{
    if (ISGRAPHSC(scp))
 return;

    SC_VIDEO_LOCK(scp->sc);
    (*scp->rndr->draw_mouse)(scp, scp->mouse_xpos, scp->mouse_ypos, TRUE);
    scp->mouse_oldpos = scp->mouse_pos;
    scp->mouse_oldxpos = scp->mouse_xpos;
    scp->mouse_oldypos = scp->mouse_ypos;
    scp->status |= MOUSE_VISIBLE;
    SC_VIDEO_UNLOCK(scp->sc);
}
