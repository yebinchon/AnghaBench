
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int disk_size; int* rpbitmap; int qt; int disk; TYPE_2__* vhba; } ;
typedef TYPE_1__ vhbarptluns_t ;
struct TYPE_6__ {TYPE_1__* private; } ;
typedef TYPE_2__ vhba_softc_t ;
struct timeval {int tv_usec; } ;


 int DISK_SIZE ;
 int MAX_LUN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TASK_INIT (int *,int ,int ,TYPE_1__*) ;
 int arc4random () ;
 int getmicrotime (struct timeval*) ;
 int malloc (int,int ,int) ;
 int printf (char*,...) ;
 int vhba_task ;

void
vhba_init(vhba_softc_t *vhba)
{
 static vhbarptluns_t vhbas;
 struct timeval now;
 int i;

 vhbas.vhba = vhba;
 vhbas.disk_size = DISK_SIZE << 20;
 vhbas.disk = malloc(vhbas.disk_size, M_DEVBUF, M_WAITOK|M_ZERO);
 vhba->private = &vhbas;
 printf("setting luns");
 getmicrotime(&now);
 if (now.tv_usec & 0x1) {
  vhbas.rpbitmap[0] |= 1;
 }
 for (i = 1; i < 8; i++) {
  if (arc4random() & 1) {
   printf(" %d", i);
   vhbas.rpbitmap[0] |= (1 << i);
  }
 }
 for (i = 8; i < MAX_LUN; i++) {
  if ((arc4random() % i) == 0) {
   vhbas.rpbitmap[i >> 3] |= (1 << (i & 0x7));
   printf(" %d", i);
  }
 }
 printf("\n");
 TASK_INIT(&vhbas.qt, 0, vhba_task, &vhbas);
}
