
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_13__ {int status; int kbd_mode; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_14__ {int config; scalar_t__ keyboard; scalar_t__ scrn_time_stamp; int flags; int ctimeout; TYPE_1__* cur_scp; scalar_t__ write_in_progress; scalar_t__ switch_in_progress; scalar_t__ blink_in_progress; int * kbd; scalar_t__ font_loading_in_progress; } ;
typedef TYPE_2__ sc_softc_t ;
typedef int caddr_t ;
struct TYPE_15__ {TYPE_2__* sc; } ;


 scalar_t__ CONS_LKM_SAVER ;
 int C_PREL (int) ;
 scalar_t__ ISGRAPHSC (TYPE_1__*) ;
 int KDSKBMODE ;
 int LOCK_MASK ;
 int SBT_1S ;
 int SC_AUTODETECT_KBD ;
 int SC_SCRN_BLANKED ;
 int SC_SCRN_IDLE ;
 scalar_t__ TRUE ;
 int callout_reset_sbt (int *,int,int ,void (*) (void*),TYPE_2__*,int ) ;
 int current_saver (TYPE_2__*,scalar_t__) ;
 int * kbd_get_keyboard (scalar_t__) ;
 int kbdd_ioctl (int *,int ,int ) ;
 scalar_t__ kdb_active ;
 scalar_t__ panicstr ;
 scalar_t__ run_scrn_saver ;
 scalar_t__ saver_mode ;
 scalar_t__ sc_allocate_keyboard (TYPE_2__*,int) ;
 TYPE_8__* sc_console ;
 int sc_touch_scrn_saver () ;
 scalar_t__ scrn_blank_time ;
 int scrn_update (TYPE_1__*,scalar_t__) ;
 scalar_t__ shutdown_in_progress ;
 int stop_scrn_saver (TYPE_2__*,int (*) (TYPE_2__*,scalar_t__)) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 scalar_t__ suspend_in_progress ;
 scalar_t__ time_uptime ;
 int update_kbd_state (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
scrn_timer(void *arg)
{
    static time_t kbd_time_stamp = 0;
    sc_softc_t *sc;
    scr_stat *scp;
    int again, rate;

    again = (arg != ((void*)0));
    if (arg != ((void*)0))
 sc = (sc_softc_t *)arg;
    else if (sc_console != ((void*)0))
 sc = sc_console->sc;
    else
 return;


    scp = sc->cur_scp;


    if (suspend_in_progress || sc->font_loading_in_progress)
 goto done;

    if ((sc->kbd == ((void*)0)) && (sc->config & SC_AUTODETECT_KBD)) {

 if (kbd_time_stamp != time_uptime) {
     kbd_time_stamp = time_uptime;
     sc->keyboard = sc_allocate_keyboard(sc, -1);
     if (sc->keyboard >= 0) {
  sc->kbd = kbd_get_keyboard(sc->keyboard);
  (void)kbdd_ioctl(sc->kbd, KDSKBMODE,
     (caddr_t)&sc->cur_scp->kbd_mode);
  update_kbd_state(sc->cur_scp, sc->cur_scp->status,
     LOCK_MASK);
     }
 }
    }


    if (kdb_active || panicstr || shutdown_in_progress)
 sc_touch_scrn_saver();
    if (run_scrn_saver) {
 if (time_uptime > sc->scrn_time_stamp + scrn_blank_time)
     sc->flags |= SC_SCRN_IDLE;
 else
     sc->flags &= ~SC_SCRN_IDLE;
    } else {
 sc->scrn_time_stamp = time_uptime;
 sc->flags &= ~SC_SCRN_IDLE;
 if (scrn_blank_time > 0)
     run_scrn_saver = TRUE;
    }







    if (sc->blink_in_progress || sc->switch_in_progress
 || sc->write_in_progress)
 goto done;


    scp = sc->cur_scp;
    if (!ISGRAPHSC(scp) && !(sc->flags & SC_SCRN_BLANKED))
 scrn_update(scp, TRUE);
done:
    if (again) {




 if (ISGRAPHSC(scp) && !(sc->flags & SC_SCRN_BLANKED))
     rate = 2;
 else
     rate = 30;
 callout_reset_sbt(&sc->ctimeout, SBT_1S / rate, 0,
     scrn_timer, sc, C_PREL(1));
    }
}
