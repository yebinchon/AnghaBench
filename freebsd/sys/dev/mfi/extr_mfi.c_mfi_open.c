
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mfi_softc {int mfi_io_lock; int mfi_flags; scalar_t__ mfi_detaching; } ;
struct cdev {struct mfi_softc* si_drv1; } ;


 int ENXIO ;
 int MFI_FLAGS_OPEN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mfi_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct mfi_softc *sc;
 int error;

 sc = dev->si_drv1;

 mtx_lock(&sc->mfi_io_lock);
 if (sc->mfi_detaching)
  error = ENXIO;
 else {
  sc->mfi_flags |= MFI_FLAGS_OPEN;
  error = 0;
 }
 mtx_unlock(&sc->mfi_io_lock);

 return (error);
}
