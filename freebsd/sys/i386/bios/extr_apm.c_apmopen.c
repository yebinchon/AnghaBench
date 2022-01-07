
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_softc {scalar_t__ initialized; int sc_flags; int event_filter; } ;




 int EBUSY ;
 int EINVAL ;
 int ENXIO ;
 int FWRITE ;
 int SCFLAG_OCTL ;
 int SCFLAG_ONORMAL ;
 struct apm_softc apm_softc ;
 int bzero (int ,int) ;
 int dev2unit (struct cdev*) ;

__attribute__((used)) static int
apmopen(struct cdev *dev, int flag, int fmt, struct thread *td)
{
 struct apm_softc *sc = &apm_softc;

 if (sc == ((void*)0) || sc->initialized == 0)
  return (ENXIO);

 switch (dev2unit(dev)) {
 case 129:
  if (!(flag & FWRITE))
   return EINVAL;
  if (sc->sc_flags & SCFLAG_OCTL)
   return EBUSY;
  sc->sc_flags |= SCFLAG_OCTL;
  bzero(sc->event_filter, sizeof sc->event_filter);
  break;
 case 128:
  sc->sc_flags |= SCFLAG_ONORMAL;
  break;
 }
 return 0;
}
