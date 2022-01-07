
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * ts; TYPE_1__* tsw; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_10__ {int flags; int keyboard; int adapter; int * font_16; int * font_14; int * font_8; int * tty; int * dev; int video_mtx; int adp; int kbd; } ;
typedef TYPE_3__ sc_softc_t ;
struct TYPE_8__ {int (* te_term ) (TYPE_2__*,int **) ;} ;


 int M_DEVBUF ;
 int SC_KERNEL_CONSOLE ;
 int SC_SPLASH_SCRN ;
 int bzero (TYPE_3__*,int) ;
 int free (int *,int ) ;
 int kbd_release (int ,int*) ;
 int mtx_destroy (int *) ;
 TYPE_3__* sc_get_softc (int,int) ;
 TYPE_2__* sc_get_stat (int ) ;
 int splash_term (int ) ;
 int stub1 (TYPE_2__*,int **) ;
 int vid_release (int ,int*) ;
 int vidd_set_hw_cursor (int ,int ,int ) ;

__attribute__((used)) static void
scterm(int unit, int flags)
{
    sc_softc_t *sc;
    scr_stat *scp;

    sc = sc_get_softc(unit, flags & SC_KERNEL_CONSOLE);
    if (sc == ((void*)0))
 return;
    if (sc->keyboard >= 0)
 kbd_release(sc->kbd, &sc->keyboard);
    if (sc->adapter >= 0)
 vid_release(sc->adp, &sc->adapter);


    scp = sc_get_stat(sc->dev[0]);
    if (scp->tsw)
 (*scp->tsw->te_term)(scp, &scp->ts);
    mtx_destroy(&sc->video_mtx);


    if (!(flags & SC_KERNEL_CONSOLE)) {
 free(scp->ts, M_DEVBUF);

 free(sc->dev, M_DEVBUF);





 free(sc->font_8, M_DEVBUF);
 free(sc->font_14, M_DEVBUF);
 free(sc->font_16, M_DEVBUF);


    }
    bzero(sc, sizeof(*sc));
    sc->keyboard = -1;
    sc->adapter = -1;
}
