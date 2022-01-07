
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {int sc; int cursor_oldpos; TYPE_2__ curs_attr; TYPE_1__* rndr; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_7__ {int (* draw_cursor ) (TYPE_3__*,int ,int,int ,int ) ;} ;


 int CONS_BLINK_CURSOR ;
 int FALSE ;
 int SC_VIDEO_LOCK (int ) ;
 int SC_VIDEO_UNLOCK (int ) ;
 int sc_inside_cutmark (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*,int ,int,int ,int ) ;

void
sc_remove_cursor_image(scr_stat *scp)
{

    SC_VIDEO_LOCK(scp->sc);
    (*scp->rndr->draw_cursor)(scp, scp->cursor_oldpos,
         scp->curs_attr.flags & CONS_BLINK_CURSOR, FALSE,
         sc_inside_cutmark(scp, scp->cursor_oldpos));
    SC_VIDEO_UNLOCK(scp->sc);
}
