
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdev {scalar_t__ si_drv1; } ;
struct amr_softc {TYPE_1__* amr_drive; int amr_dev; int amr_state; scalar_t__ amr_busyslots; } ;
struct TYPE_2__ {scalar_t__ al_disk; } ;


 int AMR_MAXLD ;
 int AMR_STATE_REMAP_LD ;
 int AMR_STATE_SHUTDOWN ;
 int amr_done (struct amr_softc*) ;
 scalar_t__ amr_flush (struct amr_softc*) ;
 int amr_startup (struct amr_softc*) ;
 int device_delete_child (int ,scalar_t__) ;
 int device_printf (int ,char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
amr_rescan_drives(struct cdev *dev)
{
    struct amr_softc *sc = (struct amr_softc *)dev->si_drv1;
    int i, error = 0;

    sc->amr_state |= AMR_STATE_REMAP_LD;
    while (sc->amr_busyslots) {
 device_printf(sc->amr_dev, "idle controller\n");
 amr_done(sc);
    }


    sc->amr_state |= AMR_STATE_SHUTDOWN;


    device_printf(sc->amr_dev, "flushing cache...");
    printf("%s\n", amr_flush(sc) ? "failed" : "done");


    for(i = 0 ; i < AMR_MAXLD; i++) {
 if(sc->amr_drive[i].al_disk != 0) {
     if((error = device_delete_child(sc->amr_dev,
  sc->amr_drive[i].al_disk)) != 0)
  goto shutdown_out;

      sc->amr_drive[i].al_disk = 0;
 }
    }

shutdown_out:
    amr_startup(sc);
}
