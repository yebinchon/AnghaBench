
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; TYPE_3__* sc; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_5__ {scalar_t__ switch_in_progress; TYPE_1__* old_scp; } ;


 int EINVAL ;
 int SWITCH_WAIT_REL ;
 int do_switch_scr (TYPE_3__*,int) ;

__attribute__((used)) static int
finish_vt_rel(scr_stat *scp, int release, int *s)
{
    if (scp == scp->sc->old_scp && scp->status & SWITCH_WAIT_REL) {
 scp->status &= ~SWITCH_WAIT_REL;
 if (release)
     *s = do_switch_scr(scp->sc, *s);
 else
     scp->sc->switch_in_progress = 0;
 return 0;
    }
    return EINVAL;
}
