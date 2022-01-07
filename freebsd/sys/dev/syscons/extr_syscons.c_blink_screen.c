
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_10__ {int xsize; int ysize; TYPE_4__* sc; TYPE_1__* rndr; int index; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_11__ {int blink_in_progress; int cblink; scalar_t__ delayed_next_scr; } ;
struct TYPE_9__ {int (* draw ) (TYPE_2__*,int ,int,int) ;} ;


 int C_PREL (int ) ;
 scalar_t__ ISGRAPHSC (TYPE_2__*) ;
 int SBT_1S ;
 struct tty* SC_DEV (TYPE_4__*,int ) ;
 int callout_reset_sbt (int *,int,int ,void (*) (void*),TYPE_2__*,int ) ;
 int mark_all (TYPE_2__*) ;
 int sc_switch_scr (TYPE_4__*,scalar_t__) ;
 int sctty_outwakeup (struct tty*) ;
 int stub1 (TYPE_2__*,int ,int,int) ;
 scalar_t__ tty_opened_ns (struct tty*) ;

__attribute__((used)) static void
blink_screen(void *arg)
{
    scr_stat *scp = arg;
    struct tty *tp;

    if (ISGRAPHSC(scp) || (scp->sc->blink_in_progress <= 1)) {
 scp->sc->blink_in_progress = 0;
     mark_all(scp);
 tp = SC_DEV(scp->sc, scp->index);
 if (tty_opened_ns(tp))
     sctty_outwakeup(tp);
 if (scp->sc->delayed_next_scr)
     sc_switch_scr(scp->sc, scp->sc->delayed_next_scr - 1);
    }
    else {
 (*scp->rndr->draw)(scp, 0, scp->xsize*scp->ysize,
      scp->sc->blink_in_progress & 1);
 scp->sc->blink_in_progress--;
 callout_reset_sbt(&scp->sc->cblink, SBT_1S / 15, 0,
     blink_screen, scp, C_PREL(0));
    }
}
