
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int status; TYPE_2__* sc; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_7__ {int flags; } ;


 int MOUSE_HIDDEN ;
 int SC_SCRN_BLANKED ;
 int sc_remove_cutmarking (TYPE_1__*) ;
 int sc_remove_mouse_image (TYPE_1__*) ;
 int sc_touch_scrn_saver () ;
 int wait_scrn_saver_stop (TYPE_2__*) ;

int
sc_clean_up(scr_stat *scp)
{




    if (scp->sc->flags & SC_SCRN_BLANKED) {
 sc_touch_scrn_saver();




    }
    scp->status |= MOUSE_HIDDEN;
    sc_remove_mouse_image(scp);
    sc_remove_cutmarking(scp);
    return 0;
}
