
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
struct TYPE_7__ {int * scr_rmap; TYPE_1__* cur_scp; } ;
struct TYPE_5__ {int index; } ;


 struct tty* SC_DEV (TYPE_4__*,int ) ;
 int tty_opened_ns (struct tty*) ;
 int ttydisc_rint (struct tty*,int ,int ) ;
 int ttydisc_rint_done (struct tty*) ;

void
sc_paste(scr_stat *scp, const u_char *p, int count)
{
    struct tty *tp;
    u_char *rmap;

    tp = SC_DEV(scp->sc, scp->sc->cur_scp->index);
    if (!tty_opened_ns(tp))
 return;
    rmap = scp->sc->scr_rmap;
    for (; count > 0; --count)
 ttydisc_rint(tp, rmap[*p++], 0);
    ttydisc_rint_done(tp);
}
