
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int video_info_t ;
struct TYPE_13__ {int border; TYPE_2__* sc; int ysize; int xsize; int scr; TYPE_1__* rndr; int mode; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_14__ {scalar_t__ va_window; } ;
struct TYPE_12__ {TYPE_4__* adp; TYPE_3__* cur_scp; } ;
struct TYPE_11__ {int (* init ) (TYPE_3__*) ;} ;


 int FALSE ;
 int VTB_FRAMEBUFFER ;
 int sc_set_border (TYPE_3__*,int ) ;
 int sc_set_cursor_image (TYPE_3__*) ;
 int sc_vtb_init (int *,int ,int ,int ,void*,int ) ;
 int stub1 (TYPE_3__*) ;
 int update_font (TYPE_3__*) ;
 scalar_t__ vidd_get_info (TYPE_4__*,int ,int *) ;
 int vidd_set_mode (TYPE_4__*,int ) ;

int
set_mode(scr_stat *scp)
{
    video_info_t info;


    if (vidd_get_info(scp->sc->adp, scp->mode, &info))
 return 1;


    if (scp != scp->sc->cur_scp)
 return 0;


    vidd_set_mode(scp->sc->adp, scp->mode);
    scp->rndr->init(scp);

    sc_vtb_init(&scp->scr, VTB_FRAMEBUFFER, scp->xsize, scp->ysize,
  (void *)scp->sc->adp->va_window, FALSE);


    update_font(scp);

    sc_set_border(scp, scp->border);
    sc_set_cursor_image(scp);

    return 0;
}
