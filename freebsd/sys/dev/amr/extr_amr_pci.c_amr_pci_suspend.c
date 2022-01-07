
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_dev; int amr_state; } ;
typedef int device_t ;


 int AMR_STATE_SUSPEND ;
 scalar_t__ amr_flush (struct amr_softc*) ;
 int debug_called (int) ;
 struct amr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
amr_pci_suspend(device_t dev)
{
    struct amr_softc *sc = device_get_softc(dev);

    debug_called(1);

    sc->amr_state |= AMR_STATE_SUSPEND;


    device_printf(sc->amr_dev, "flushing cache...");
    printf("%s\n", amr_flush(sc) ? "failed" : "done");



    return(0);
}
