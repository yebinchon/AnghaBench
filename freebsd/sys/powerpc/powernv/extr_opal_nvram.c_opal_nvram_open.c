
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct opal_nvram_softc {int sc_isopen; } ;
struct cdev {struct opal_nvram_softc* si_drv1; } ;


 int EBUSY ;

__attribute__((used)) static int
opal_nvram_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct opal_nvram_softc *sc = dev->si_drv1;

 if (sc->sc_isopen)
  return EBUSY;
 sc->sc_isopen = 1;
 return (0);
}
