
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mfi_softc {scalar_t__ mfi_aen_triggered; int mfi_poll_waiting; int mfi_select; int * mfi_aen_cm; } ;
struct cdev {struct mfi_softc* si_drv1; } ;


 int POLLERR ;
 int POLLIN ;
 int POLLRDNORM ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
mfi_poll(struct cdev *dev, int poll_events, struct thread *td)
{
 struct mfi_softc *sc;
 int revents = 0;

 sc = dev->si_drv1;

 if (poll_events & (POLLIN | POLLRDNORM)) {
  if (sc->mfi_aen_triggered != 0) {
   revents |= poll_events & (POLLIN | POLLRDNORM);
   sc->mfi_aen_triggered = 0;
  }
  if (sc->mfi_aen_triggered == 0 && sc->mfi_aen_cm == ((void*)0)) {
   revents |= POLLERR;
  }
 }

 if (revents == 0) {
  if (poll_events & (POLLIN | POLLRDNORM)) {
   sc->mfi_poll_waiting = 1;
   selrecord(td, &sc->mfi_select);
  }
 }

 return revents;
}
