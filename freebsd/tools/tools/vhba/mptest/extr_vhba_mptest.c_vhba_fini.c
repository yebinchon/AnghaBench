
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* private; } ;
typedef TYPE_1__ vhba_softc_t ;
struct TYPE_5__ {int disk; int tick; } ;
typedef TYPE_2__ mptest_t ;


 int M_DEVBUF ;
 int callout_stop (int *) ;
 int free (int ,int ) ;

void
vhba_fini(vhba_softc_t *vhba)
{
 mptest_t *vhbas = vhba->private;
 callout_stop(&vhbas->tick);
 vhba->private = ((void*)0);
 free(vhbas->disk, M_DEVBUF);
}
