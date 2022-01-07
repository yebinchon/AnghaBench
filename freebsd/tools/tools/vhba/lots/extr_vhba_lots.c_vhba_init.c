
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int disk_size; int qt; int disk; TYPE_2__* vhba; } ;
typedef TYPE_1__ vhbalots_t ;
struct TYPE_6__ {TYPE_1__* private; } ;
typedef TYPE_2__ vhba_softc_t ;


 int DISK_SIZE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TASK_INIT (int *,int ,int ,TYPE_1__*) ;
 int malloc (int,int ,int) ;
 int vhba_task ;

void
vhba_init(vhba_softc_t *vhba)
{
 static vhbalots_t vhbas;
 vhbas.vhba = vhba;
 vhbas.disk_size = DISK_SIZE << 20;
 vhbas.disk = malloc(vhbas.disk_size, M_DEVBUF, M_WAITOK|M_ZERO);
 vhba->private = &vhbas;
 TASK_INIT(&vhbas.qt, 0, vhba_task, &vhbas);
}
