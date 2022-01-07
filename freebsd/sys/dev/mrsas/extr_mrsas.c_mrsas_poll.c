
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mrsas_softc {int mrsas_poll_waiting; int aen_lock; int mrsas_select; scalar_t__ mrsas_aen_triggered; } ;
struct cdev {struct mrsas_softc* si_drv1; } ;


 int POLLIN ;
 int POLLRDNORM ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
mrsas_poll(struct cdev *dev, int poll_events, struct thread *td)
{
 struct mrsas_softc *sc;
 int revents = 0;

 sc = dev->si_drv1;

 if (poll_events & (POLLIN | POLLRDNORM)) {
  if (sc->mrsas_aen_triggered) {
   revents |= poll_events & (POLLIN | POLLRDNORM);
  }
 }
 if (revents == 0) {
  if (poll_events & (POLLIN | POLLRDNORM)) {
   mtx_lock(&sc->aen_lock);
   sc->mrsas_poll_waiting = 1;
   selrecord(td, &sc->mrsas_select);
   mtx_unlock(&sc->aen_lock);
  }
 }
 return revents;
}
