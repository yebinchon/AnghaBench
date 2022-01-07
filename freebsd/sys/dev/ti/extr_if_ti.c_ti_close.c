
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int ti_flags; } ;
struct thread {int dummy; } ;
struct cdev {struct ti_softc* si_drv1; } ;


 int ENODEV ;
 int TI_FLAG_DEBUGING ;
 int TI_LOCK (struct ti_softc*) ;
 int TI_UNLOCK (struct ti_softc*) ;

__attribute__((used)) static int
ti_close(struct cdev *dev, int flag, int fmt, struct thread *td)
{
 struct ti_softc *sc;

 sc = dev->si_drv1;
 if (sc == ((void*)0))
  return (ENODEV);

 TI_LOCK(sc);
 sc->ti_flags &= ~TI_FLAG_DEBUGING;
 TI_UNLOCK(sc);

 return (0);
}
