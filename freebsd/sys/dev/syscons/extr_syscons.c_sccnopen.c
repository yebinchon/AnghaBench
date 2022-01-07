
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sc_cnstate {void* scr_opened; int mtx_locked; int kdb_locked; void* kbd_opened; void* kbd_locked; } ;
struct TYPE_13__ {TYPE_2__* cur_scp; int * kbd; int kbd_open_level; } ;
typedef TYPE_4__ sc_softc_t ;
typedef int caddr_t ;
struct TYPE_12__ {scalar_t__ mode; } ;
struct TYPE_14__ {scalar_t__ index; TYPE_3__ smode; } ;
struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_11__ {scalar_t__ index; TYPE_1__ smode; } ;


 void* FALSE ;
 int KDSKBMODE ;
 int K_XLATE ;
 void* TRUE ;
 scalar_t__ VT_AUTO ;
 int cold ;
 int kbdd_enable (int *) ;
 int kbdd_ioctl (int *,int ,int ) ;
 int kbdd_poll (int *,void*) ;
 TYPE_9__* sc_console ;
 int sc_switch_scr (TYPE_4__*,scalar_t__) ;
 int sccnkbdlock (TYPE_4__*,struct sc_cnstate*) ;
 int sccnscrlock (TYPE_4__*,struct sc_cnstate*) ;

__attribute__((used)) static void
sccnopen(sc_softc_t *sc, struct sc_cnstate *sp, int flags)
{
    int kbd_mode;



    sp->kbd_opened = FALSE;
    sp->scr_opened = FALSE;
    sp->kbd_locked = FALSE;


    if (!(flags & 1) || sc->kbd == ((void*)0))
 goto over_keyboard;

    sccnkbdlock(sc, sp);





    kbdd_enable(sc->kbd);


    kbd_mode = K_XLATE;
    (void)kbdd_ioctl(sc->kbd, KDSKBMODE, (caddr_t)&kbd_mode);
    sc->kbd_open_level++;
    kbdd_poll(sc->kbd, TRUE);

    sp->kbd_opened = TRUE;
over_keyboard: ;


    sccnscrlock(sc, sp);
    if (!sp->kdb_locked && !sp->mtx_locked)
 return;
    sp->scr_opened = TRUE;


    if (!(flags & 2))
 return;


    if (!cold &&
 sc->cur_scp->index != sc_console->index &&
 sc->cur_scp->smode.mode == VT_AUTO &&
 sc_console->smode.mode == VT_AUTO)
     sc_switch_scr(sc, sc_console->index);
}
