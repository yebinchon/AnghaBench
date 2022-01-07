
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_proc; } ;
struct cfi_softc {int * sc_opened; scalar_t__ sc_writing; } ;
struct cdev {struct cfi_softc* si_drv1; } ;


 int ENXIO ;
 int cfi_block_finish (struct cfi_softc*) ;

__attribute__((used)) static int
cfi_devclose(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct cfi_softc *sc;
 int error;

 sc = dev->si_drv1;

 if (sc->sc_opened != td->td_proc)
  return (ENXIO);

 error = (sc->sc_writing) ? cfi_block_finish(sc) : 0;
 sc->sc_opened = ((void*)0);
 return (error);
}
