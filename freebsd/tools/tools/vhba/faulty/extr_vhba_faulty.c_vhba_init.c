
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* private; } ;
typedef TYPE_1__ vhba_softc_t ;
struct TYPE_6__ {int disk_size; int ctr; int qt; int disk; TYPE_1__* vhba; } ;
typedef TYPE_2__ faulty_t ;


 int DISK_SIZE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TASK_INIT (int *,int ,int ,TYPE_2__*) ;
 int arc4random () ;
 int malloc (int,int ,int) ;
 int vhba_task ;

void
vhba_init(vhba_softc_t *vhba)
{
 static faulty_t vhbastatic;
 vhbastatic.vhba = vhba;
 vhbastatic.disk_size = DISK_SIZE << 20;
 vhbastatic.disk = malloc(vhbastatic.disk_size, M_DEVBUF, M_WAITOK|M_ZERO);
 vhba->private = &vhbastatic;
 vhbastatic.ctr = (arc4random() & 0xffff) + 1;
 TASK_INIT(&vhbastatic.qt, 0, vhba_task, &vhbastatic);
}
