
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sc; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_7__ {int flags; scalar_t__ switch_in_progress; scalar_t__ blink_in_progress; TYPE_1__* cur_scp; scalar_t__ font_loading_in_progress; } ;


 scalar_t__ CONS_LKM_SAVER ;
 int ISGRAPHSC (TYPE_1__*) ;
 int SC_SCRN_BLANKED ;
 int SC_SCRN_IDLE ;
 int TRUE ;
 int current_saver ;
 scalar_t__ kdb_active ;
 scalar_t__ panicstr ;
 int run_scrn_saver ;
 scalar_t__ saver_mode ;
 int sc_touch_scrn_saver () ;
 int scrn_update (TYPE_1__*,int ) ;
 scalar_t__ shutdown_in_progress ;
 int stop_scrn_saver (TYPE_2__*,int ) ;
 scalar_t__ suspend_in_progress ;

__attribute__((used)) static void
sccnupdate(scr_stat *scp)
{


    if (suspend_in_progress || scp->sc->font_loading_in_progress)
 return;

    if (kdb_active || panicstr || shutdown_in_progress) {
 sc_touch_scrn_saver();
    } else if (scp != scp->sc->cur_scp) {
 return;
    }

    if (!run_scrn_saver)
 scp->sc->flags &= ~SC_SCRN_IDLE;






    if (scp != scp->sc->cur_scp || scp->sc->blink_in_progress
 || scp->sc->switch_in_progress)
 return;





    if (!ISGRAPHSC(scp) && !(scp->sc->flags & SC_SCRN_BLANKED))
 scrn_update(scp, TRUE);
}
