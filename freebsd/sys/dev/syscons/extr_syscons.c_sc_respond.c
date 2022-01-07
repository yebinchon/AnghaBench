
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct tty {int dummy; } ;
struct TYPE_6__ {TYPE_4__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_7__ {TYPE_1__* cur_scp; } ;
struct TYPE_5__ {int index; } ;


 struct tty* SC_DEV (TYPE_4__*,int ) ;
 int tty_opened_ns (struct tty*) ;
 int ttydisc_rint_done (struct tty*) ;
 int ttydisc_rint_simple (struct tty*,int const*,int) ;

void
sc_respond(scr_stat *scp, const u_char *p, int count, int wakeup)
{
    struct tty *tp;

    tp = SC_DEV(scp->sc, scp->sc->cur_scp->index);
    if (!tty_opened_ns(tp))
 return;
    ttydisc_rint_simple(tp, p, count);
    if (wakeup) {

 ttydisc_rint_done(tp);
    }
}
