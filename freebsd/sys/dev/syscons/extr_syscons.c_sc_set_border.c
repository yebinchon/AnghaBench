
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sc; TYPE_1__* rndr; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_5__ {int (* draw_border ) (TYPE_2__*,int) ;} ;


 int SC_VIDEO_LOCK (int ) ;
 int SC_VIDEO_UNLOCK (int ) ;
 int stub1 (TYPE_2__*,int) ;

void
sc_set_border(scr_stat *scp, int color)
{
    SC_VIDEO_LOCK(scp->sc);
    (*scp->rndr->draw_border)(scp, color);
    SC_VIDEO_UNLOCK(scp->sc);
}
