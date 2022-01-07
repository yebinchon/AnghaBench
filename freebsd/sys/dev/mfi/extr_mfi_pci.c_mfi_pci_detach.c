
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_flags; int mfi_detaching; int mfi_eh; int mfi_config_lock; int mfi_dev; int mfi_io_lock; } ;
typedef int device_t ;


 int EBUSY ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int MFI_FLAGS_OPEN ;
 int M_TEMP ;
 int device_delete_child (int ,int ) ;
 int device_get_children (int ,int **,int*) ;
 struct mfi_softc* device_get_softc (int ) ;
 int free (int *,int ) ;
 int mfi_free (struct mfi_softc*) ;
 int mfi_pci_free (struct mfi_softc*) ;
 int mfi_shutdown (struct mfi_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int shutdown_final ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
mfi_pci_detach(device_t dev)
{
 struct mfi_softc *sc;
 int error, devcount, i;
 device_t *devlist;

 sc = device_get_softc(dev);

 sx_xlock(&sc->mfi_config_lock);
 mtx_lock(&sc->mfi_io_lock);
 if ((sc->mfi_flags & MFI_FLAGS_OPEN) != 0) {
  mtx_unlock(&sc->mfi_io_lock);
  sx_xunlock(&sc->mfi_config_lock);
  return (EBUSY);
 }
 sc->mfi_detaching = 1;
 mtx_unlock(&sc->mfi_io_lock);

 if ((error = device_get_children(sc->mfi_dev, &devlist, &devcount)) != 0) {
  sx_xunlock(&sc->mfi_config_lock);
  return error;
 }
 for (i = 0; i < devcount; i++)
  device_delete_child(sc->mfi_dev, devlist[i]);
 free(devlist, M_TEMP);
 sx_xunlock(&sc->mfi_config_lock);

 EVENTHANDLER_DEREGISTER(shutdown_final, sc->mfi_eh);

 mfi_shutdown(sc);
 mfi_free(sc);
 mfi_pci_free(sc);
 return (0);
}
