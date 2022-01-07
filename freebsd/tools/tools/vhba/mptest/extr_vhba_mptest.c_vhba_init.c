
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; TYPE_2__* private; } ;
typedef TYPE_1__ vhba_softc_t ;
struct TYPE_7__ {int disk_size; int* luns; int qt; int inproc; int tick; int disk; TYPE_1__* vhba; } ;
typedef TYPE_2__ mptest_t ;


 int DISK_SIZE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,TYPE_2__*) ;
 int VMP_TIME ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int ,int ,TYPE_1__*) ;
 int malloc (int,int ,int) ;
 int vhba_task ;
 int vhba_timer ;

void
vhba_init(vhba_softc_t *vhba)
{
 static mptest_t vhbastatic;

 vhbastatic.vhba = vhba;
 vhbastatic.disk_size = DISK_SIZE << 20;
 vhbastatic.disk = malloc(vhbastatic.disk_size, M_DEVBUF, M_WAITOK|M_ZERO);
 vhba->private = &vhbastatic;
 callout_init_mtx(&vhbastatic.tick, &vhba->lock, 0);
 callout_reset(&vhbastatic.tick, VMP_TIME, vhba_timer, vhba);
 TAILQ_INIT(&vhbastatic.inproc);
 TASK_INIT(&vhbastatic.qt, 0, vhba_task, &vhbastatic);
 vhbastatic.luns[0] = 1;
 vhbastatic.luns[1] = 1;
}
