
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_state; } ;
typedef int device_t ;


 int AMR_STATE_OPEN ;
 int EBUSY ;
 int amr_pci_free (struct amr_softc*) ;
 int amr_pci_shutdown (int ) ;
 int debug_called (int) ;
 struct amr_softc* device_get_softc (int ) ;

__attribute__((used)) static int
amr_pci_detach(device_t dev)
{
    struct amr_softc *sc = device_get_softc(dev);
    int error;

    debug_called(1);

    if (sc->amr_state & AMR_STATE_OPEN)
 return(EBUSY);

    if ((error = amr_pci_shutdown(dev)))
 return(error);

    amr_pci_free(sc);

    return(0);
}
