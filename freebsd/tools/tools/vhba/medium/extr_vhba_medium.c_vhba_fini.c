
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disk; } ;
typedef TYPE_1__ vhbamedium_t ;
struct TYPE_5__ {TYPE_1__* private; } ;
typedef TYPE_2__ vhba_softc_t ;


 int M_DEVBUF ;
 int free (int ,int ) ;

void
vhba_fini(vhba_softc_t *vhba)
{
 vhbamedium_t *vhbas = vhba->private;
 vhba->private = ((void*)0);
 free(vhbas->disk, M_DEVBUF);
}
