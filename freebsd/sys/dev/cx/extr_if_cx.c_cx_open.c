
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {TYPE_2__* si_drv1; } ;
struct TYPE_5__ {int open_dev; TYPE_1__* chan; } ;
typedef TYPE_2__ drv_t ;
struct TYPE_4__ {int num; } ;


 int CX_DEBUG2 (TYPE_2__*,char*) ;

__attribute__((used)) static int cx_open (struct cdev *dev, int flag, int mode, struct thread *td)
{
 int unit;
 drv_t *d;

 d = dev->si_drv1;
 unit = d->chan->num;

 CX_DEBUG2 (d, ("cx_open unit=%d, flag=0x%x, mode=0x%x\n",
      unit, flag, mode));

 d->open_dev |= 0x1;

 CX_DEBUG2 (d, ("cx_open done\n"));

 return 0;
}
