
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {TYPE_1__* si_drv1; } ;
struct TYPE_3__ {int open_dev; } ;
typedef TYPE_1__ drv_t ;


 int CX_DEBUG2 (TYPE_1__*,char*) ;

__attribute__((used)) static int cx_close (struct cdev *dev, int flag, int mode, struct thread *td)
{
 drv_t *d;

 d = dev->si_drv1;
 CX_DEBUG2 (d, ("cx_close\n"));
 d->open_dev &= ~0x1;
 return 0;
}
