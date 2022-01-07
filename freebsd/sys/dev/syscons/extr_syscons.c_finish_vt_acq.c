
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_4__ {scalar_t__ switch_in_progress; TYPE_2__* new_scp; } ;


 int EINVAL ;
 int SWITCH_WAIT_ACQ ;

__attribute__((used)) static int
finish_vt_acq(scr_stat *scp)
{
    if (scp == scp->sc->new_scp && scp->status & SWITCH_WAIT_ACQ) {
 scp->status &= ~SWITCH_WAIT_ACQ;
 scp->sc->switch_in_progress = 0;
 return 0;
    }
    return EINVAL;
}
