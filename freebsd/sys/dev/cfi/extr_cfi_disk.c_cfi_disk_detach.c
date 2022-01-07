
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_disk_softc {int flags; int qlock; int disk; int tq; } ;
typedef int device_t ;


 int CFI_DISK_OPEN ;
 int EBUSY ;
 struct cfi_disk_softc* device_get_softc (int ) ;
 int disk_destroy (int ) ;
 int mtx_destroy (int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static int
cfi_disk_detach(device_t dev)
{
 struct cfi_disk_softc *sc = device_get_softc(dev);

 if (sc->flags & CFI_DISK_OPEN)
  return EBUSY;
 taskqueue_free(sc->tq);

 disk_destroy(sc->disk);
 mtx_destroy(&sc->qlock);
 return 0;
}
