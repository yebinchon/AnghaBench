
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ich_func; } ;
struct amr_softc {TYPE_1__ amr_ich; int amr_state; int amr_dev; struct amr_logdrive* amr_drive; } ;
struct amr_logdrive {int al_size; scalar_t__ al_disk; int al_heads; int al_sectors; int al_cylinders; } ;


 int AMR_MAXLD ;
 int AMR_STATE_INTEN ;
 int AMR_STATE_SHUTDOWN ;
 scalar_t__ amr_query_controller (struct amr_softc*) ;
 int bus_generic_attach (int ) ;
 int config_intrhook_disestablish (TYPE_1__*) ;
 int debug_called (int) ;
 scalar_t__ device_add_child (int ,int *,int) ;
 int device_printf (int ,char*,...) ;
 int device_set_ivars (scalar_t__,struct amr_logdrive*) ;

__attribute__((used)) static void
amr_startup(void *arg)
{
    struct amr_softc *sc = (struct amr_softc *)arg;
    struct amr_logdrive *dr;
    int i, error;

    debug_called(1);


    if (amr_query_controller(sc)) {
 device_printf(sc->amr_dev, "can't scan controller for drives\n");
 return;
    }


    for (i = 0, dr = &sc->amr_drive[0]; (i < AMR_MAXLD) && (dr->al_size != 0xffffffff); i++, dr++) {

 if (dr->al_disk == 0) {

     if (dr->al_size > 0x200000) {
  dr->al_heads = 255;
  dr->al_sectors = 63;
     } else {
  dr->al_heads = 64;
  dr->al_sectors = 32;
     }
     dr->al_cylinders = dr->al_size / (dr->al_heads * dr->al_sectors);

     dr->al_disk = device_add_child(sc->amr_dev, ((void*)0), -1);
     if (dr->al_disk == 0)
  device_printf(sc->amr_dev, "device_add_child failed\n");
     device_set_ivars(dr->al_disk, dr);
 }
    }

    if ((error = bus_generic_attach(sc->amr_dev)) != 0)
 device_printf(sc->amr_dev, "bus_generic_attach returned %d\n", error);


    sc->amr_state &= ~AMR_STATE_SHUTDOWN;


    sc->amr_state |= AMR_STATE_INTEN;


    if (sc->amr_ich.ich_func)
 config_intrhook_disestablish(&sc->amr_ich);
    sc->amr_ich.ich_func = ((void*)0);

    return;
}
