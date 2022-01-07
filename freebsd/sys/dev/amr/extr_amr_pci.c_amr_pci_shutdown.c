
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amr_softc {TYPE_1__* amr_drive; int amr_dev; int amr_state; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ al_disk; } ;


 int AMR_MAXLD ;
 int AMR_STATE_SHUTDOWN ;
 scalar_t__ amr_flush (struct amr_softc*) ;
 int debug_called (int) ;
 int device_delete_child (int ,scalar_t__) ;
 struct amr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
amr_pci_shutdown(device_t dev)
{
    struct amr_softc *sc = device_get_softc(dev);
    int i,error;

    debug_called(1);


    sc->amr_state |= AMR_STATE_SHUTDOWN;



    device_printf(sc->amr_dev, "flushing cache...");
    printf("%s\n", amr_flush(sc) ? "failed" : "done");

    error = 0;


    for(i = 0 ; i < AMR_MAXLD; i++) {
 if( sc->amr_drive[i].al_disk != 0) {
     if((error = device_delete_child(sc->amr_dev,sc->amr_drive[i].al_disk)) != 0)
  goto shutdown_out;
     sc->amr_drive[i].al_disk = 0;
 }
    }



shutdown_out:
    return(error);
}
