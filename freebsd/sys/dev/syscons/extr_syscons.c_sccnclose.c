
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sc_cnstate {void* kbd_opened; void* scr_opened; } ;
struct TYPE_7__ {scalar_t__ kbd_open_level; int kbd; TYPE_1__* cur_scp; } ;
typedef TYPE_2__ sc_softc_t ;
typedef int caddr_t ;
struct TYPE_6__ {int kbd_mode; } ;


 void* FALSE ;
 int KDSKBMODE ;
 int kbdd_disable (int ) ;
 int kbdd_ioctl (int ,int ,int ) ;
 int kbdd_poll (int ,void*) ;
 int sccnkbdunlock (TYPE_2__*,struct sc_cnstate*) ;
 int sccnscrunlock (TYPE_2__*,struct sc_cnstate*) ;

__attribute__((used)) static void
sccnclose(sc_softc_t *sc, struct sc_cnstate *sp)
{
    sp->scr_opened = FALSE;
    sccnscrunlock(sc, sp);

    if (!sp->kbd_opened)
 return;


    kbdd_poll(sc->kbd, FALSE);
    if (--sc->kbd_open_level == 0)
 (void)kbdd_ioctl(sc->kbd, KDSKBMODE, (caddr_t)&sc->cur_scp->kbd_mode);

    kbdd_disable(sc->kbd);
    sp->kbd_opened = FALSE;
    sccnkbdunlock(sc, sp);
}
