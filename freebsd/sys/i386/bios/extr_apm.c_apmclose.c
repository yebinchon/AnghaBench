
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_softc {int sc_flags; scalar_t__ event_ptr; scalar_t__ event_count; int event_filter; } ;




 int SCFLAG_OCTL ;
 int SCFLAG_ONORMAL ;
 int SCFLAG_OPEN ;
 int apm_lastreq_rejected () ;
 struct apm_softc apm_softc ;
 int bzero (int ,int) ;
 int dev2unit (struct cdev*) ;

__attribute__((used)) static int
apmclose(struct cdev *dev, int flag, int fmt, struct thread *td)
{
 struct apm_softc *sc = &apm_softc;

 switch (dev2unit(dev)) {
 case 129:
  apm_lastreq_rejected();
  sc->sc_flags &= ~SCFLAG_OCTL;
  bzero(sc->event_filter, sizeof sc->event_filter);
  break;
 case 128:
  sc->sc_flags &= ~SCFLAG_ONORMAL;
  break;
 }
 if ((sc->sc_flags & SCFLAG_OPEN) == 0) {
  sc->event_count = 0;
  sc->event_ptr = 0;
 }
 return 0;
}
