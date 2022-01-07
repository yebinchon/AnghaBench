
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct psm_softc {int rsel; TYPE_1__ queue; } ;
struct cdev {struct psm_softc* si_drv1; } ;


 int POLLIN ;
 int POLLRDNORM ;
 int selrecord (struct thread*,int *) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
psmpoll(struct cdev *dev, int events, struct thread *td)
{
 struct psm_softc *sc = dev->si_drv1;
 int s;
 int revents = 0;


 s = spltty();
 if (events & (POLLIN | POLLRDNORM)) {
  if (sc->queue.count > 0)
   revents |= events & (POLLIN | POLLRDNORM);
  else
   selrecord(td, &sc->rsel);
 }
 splx(s);

 return (revents);
}
