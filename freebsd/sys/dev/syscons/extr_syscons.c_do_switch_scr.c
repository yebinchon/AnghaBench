
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ unit; scalar_t__ switch_in_progress; TYPE_2__* cur_scp; int new_scp; } ;
typedef TYPE_1__ sc_softc_t ;
struct TYPE_7__ {int index; } ;


 int TRUE ;
 int VTY_WCHAN (TYPE_1__*,int ) ;
 int cnavailable (int ,int ) ;
 int exchange_scr (TYPE_1__*) ;
 scalar_t__ sc_console_unit ;
 int sc_consptr ;
 int signal_vt_acq (TYPE_2__*) ;
 int spltty () ;
 int splx (int) ;
 int vt_proc_alive (int ) ;
 int wakeup (int ) ;

__attribute__((used)) static int
do_switch_scr(sc_softc_t *sc, int s)
{
    vt_proc_alive(sc->new_scp);

    splx(s);
    exchange_scr(sc);
    s = spltty();

    wakeup(VTY_WCHAN(sc,sc->cur_scp->index));


    if (!signal_vt_acq(sc->cur_scp)) {
 sc->switch_in_progress = 0;
 if (sc->unit == sc_console_unit)
     cnavailable(sc_consptr, TRUE);
    }

    return s;
}
