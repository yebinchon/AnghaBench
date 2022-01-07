
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int status_vbus; int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; } ;
struct saf1761_otg_softc {TYPE_1__ sc_flags; } ;


 int DPRINTFN (int,char*,int) ;
 int SAF1761_READ_LE_4 (struct saf1761_otg_softc*,int ) ;
 int SOTG_STATUS ;
 int SOTG_STATUS_ID ;
 int SOTG_STATUS_VBUS_VLD ;
 int saf1761_otg_root_intr (struct saf1761_otg_softc*) ;

__attribute__((used)) static void
saf1761_otg_update_vbus(struct saf1761_otg_softc *sc)
{
 uint16_t status;


 status = SAF1761_READ_LE_4(sc, SOTG_STATUS);

 DPRINTFN(4, "STATUS=0x%04x\n", status);

 if ((status & SOTG_STATUS_VBUS_VLD) &&
     (status & SOTG_STATUS_ID)) {

  if (!sc->sc_flags.status_vbus) {
   sc->sc_flags.status_vbus = 1;


   saf1761_otg_root_intr(sc);
  }
 } else {

  if (sc->sc_flags.status_vbus) {
   sc->sc_flags.status_vbus = 0;
   sc->sc_flags.status_bus_reset = 0;
   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 0;
   sc->sc_flags.change_connect = 1;


   saf1761_otg_root_intr(sc);
  }
 }
}
