
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {TYPE_4__* sc; TYPE_1__* tsw; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_8__ {scalar_t__ delayed_next_scr; TYPE_2__* cur_scp; } ;
struct TYPE_6__ {int (* te_puts ) (TYPE_2__*,int *,int) ;} ;


 int FALSE ;
 int run_scrn_saver ;
 int sc_saver_keyb_only ;
 int sc_switch_scr (TYPE_4__*,scalar_t__) ;
 int sticky_splash ;
 int stub1 (TYPE_2__*,int *,int) ;

__attribute__((used)) static void
sc_puts(scr_stat *scp, u_char *buf, int len)
{






    if (scp->tsw)
 (*scp->tsw->te_puts)(scp, buf, len);
    if (scp->sc->delayed_next_scr)
 sc_switch_scr(scp->sc, scp->sc->delayed_next_scr - 1);
}
