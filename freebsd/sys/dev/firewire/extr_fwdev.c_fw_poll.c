
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xferq {int rsel; int q; } ;
struct fw_drv1 {struct fw_xferq* ir; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef int fw_proc ;


 scalar_t__ DEV_FWMEM (struct cdev*) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int * STAILQ_FIRST (int *) ;
 int fwmem_poll (struct cdev*,int,int *) ;
 int selrecord (int *,int *) ;

int
fw_poll(struct cdev *dev, int events, fw_proc *td)
{
 struct fw_xferq *ir;
 int revents;
 int tmp;

 if (DEV_FWMEM(dev))
  return fwmem_poll(dev, events, td);

 ir = ((struct fw_drv1 *)dev->si_drv1)->ir;
 revents = 0;
 tmp = POLLIN | POLLRDNORM;
 if (events & tmp) {
  if (STAILQ_FIRST(&ir->q) != ((void*)0))
   revents |= tmp;
  else
   selrecord(td, &ir->rsel);
 }
 tmp = POLLOUT | POLLWRNORM;
 if (events & tmp) {

  revents |= tmp;
 }

 return revents;
}
