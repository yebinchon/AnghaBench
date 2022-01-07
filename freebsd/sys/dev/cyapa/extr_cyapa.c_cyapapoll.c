
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cyapa_softc {int isselect; int selinfo; int rfifo; scalar_t__ data_signal; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;


 int POLLIN ;
 int POLLRDNORM ;
 int cyapa_lock (struct cyapa_softc*) ;
 int cyapa_unlock (struct cyapa_softc*) ;
 int fifo_empty (struct cyapa_softc*,int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
cyapapoll(struct cdev *dev, int events, struct thread *td)
{
 struct cyapa_softc *sc;
 int revents;

 sc = dev->si_drv1;
 revents = 0;

 cyapa_lock(sc);
 if (events & (POLLIN | POLLRDNORM)) {
  if (sc->data_signal || !fifo_empty(sc, &sc->rfifo))
   revents = events & (POLLIN | POLLRDNORM);
  else {
   sc->isselect = 1;
   selrecord(td, &sc->selinfo);
  }
 }
 cyapa_unlock(sc);

 return (revents);
}
