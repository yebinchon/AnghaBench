
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_softc {int sc_rsel; scalar_t__ event_count; } ;


 int POLLIN ;
 int POLLRDNORM ;
 struct apm_softc apm_softc ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
apmpoll(struct cdev *dev, int events, struct thread *td)
{
 struct apm_softc *sc = &apm_softc;
 int revents = 0;

 if (events & (POLLIN | POLLRDNORM)) {
  if (sc->event_count) {
   revents |= events & (POLLIN | POLLRDNORM);
  } else {
   selrecord(td, &sc->sc_rsel);
  }
 }

 return (revents);
}
