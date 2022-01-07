
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_proc; } ;
struct cfi_softc {int sc_opened; } ;
struct cdev {struct cfi_softc* si_drv1; } ;


 int EBUSY ;
 int atomic_cmpset_acq_ptr (uintptr_t*,uintptr_t,uintptr_t) ;

__attribute__((used)) static int
cfi_devopen(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct cfi_softc *sc;

 sc = dev->si_drv1;

 if (!atomic_cmpset_acq_ptr((uintptr_t *)&sc->sc_opened,
     (uintptr_t)((void*)0), (uintptr_t)td->td_proc))
  return (EBUSY);
 return (0);
}
