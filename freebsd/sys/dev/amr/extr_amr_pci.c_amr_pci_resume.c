
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_state; } ;
typedef int device_t ;


 int AMR_STATE_SUSPEND ;
 int debug_called (int) ;
 struct amr_softc* device_get_softc (int ) ;

__attribute__((used)) static int
amr_pci_resume(device_t dev)
{
    struct amr_softc *sc = device_get_softc(dev);

    debug_called(1);

    sc->amr_state &= ~AMR_STATE_SUSPEND;



    return(0);
}
