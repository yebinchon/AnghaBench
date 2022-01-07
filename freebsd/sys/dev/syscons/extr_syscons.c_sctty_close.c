
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_10__ {void* mode; } ;
struct TYPE_12__ {int kbd_mode; TYPE_2__* sc; TYPE_1__ smode; int * proc; scalar_t__ pid; int ysize; int scr; int vtb; } ;
typedef TYPE_3__ scr_stat ;
typedef int caddr_t ;
struct TYPE_11__ {scalar_t__ unit; int kbd; TYPE_3__* cur_scp; } ;
typedef int * SC_STAT ;


 int DPRINTF (int,char*) ;
 int KDSKBMODE ;
 int K_XLATE ;
 int M_DEVBUF ;
 scalar_t__ SC_CONSOLECTL ;
 scalar_t__ SC_VTY (struct tty*) ;
 int TRUE ;
 void* VT_AUTO ;
 int cnavailable (int ,int ) ;
 scalar_t__ finish_vt_acq (TYPE_3__*) ;
 scalar_t__ finish_vt_rel (TYPE_3__*,int ,int*) ;
 int free (TYPE_3__*,int ) ;
 int kbdd_ioctl (int ,int ,int ) ;
 TYPE_3__ main_console ;
 scalar_t__ sc_console_unit ;
 int sc_consptr ;
 int sc_free_history_buffer (TYPE_3__*,int ) ;
 TYPE_3__* sc_get_stat (struct tty*) ;
 int sc_vtb_destroy (int *) ;
 int spltty () ;

__attribute__((used)) static void
sctty_close(struct tty *tp)
{
    scr_stat *scp;
    int s;

    if (SC_VTY(tp) != SC_CONSOLECTL) {
 scp = sc_get_stat(tp);

 DPRINTF(5, ("sc%d: scclose(), ", scp->sc->unit));
 s = spltty();
 if ((scp == scp->sc->cur_scp) && (scp->sc->unit == sc_console_unit))
     cnavailable(sc_consptr, TRUE);
 if (finish_vt_rel(scp, TRUE, &s) == 0)
     DPRINTF(5, ("reset WAIT_REL, "));
 if (finish_vt_acq(scp) == 0)
     DPRINTF(5, ("reset WAIT_ACQ, "));
 scp->pid = 0;
 scp->proc = ((void*)0);
 scp->smode.mode = VT_AUTO;

 scp->kbd_mode = K_XLATE;
 if (scp == scp->sc->cur_scp)
     (void)kbdd_ioctl(scp->sc->kbd, KDSKBMODE, (caddr_t)&scp->kbd_mode);
 DPRINTF(5, ("done.\n"));
    }
}
