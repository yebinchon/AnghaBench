
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int bus_mtx; } ;
struct TYPE_3__ {int status_suspend; } ;
struct saf1761_otg_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;


 int DPRINTFN (int,char*) ;
 int SAF1761_READ_LE_4 (struct saf1761_otg_softc*,int ) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int) ;
 int SOTG_MODE ;
 int SOTG_MODE_SNDRSU ;
 int hz ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static void
saf1761_otg_wakeup_peer(struct saf1761_otg_softc *sc)
{
 uint16_t temp;

 if (!(sc->sc_flags.status_suspend))
  return;

 DPRINTFN(5, "\n");

 temp = SAF1761_READ_LE_4(sc, SOTG_MODE);
 SAF1761_WRITE_LE_4(sc, SOTG_MODE, temp | SOTG_MODE_SNDRSU);
 SAF1761_WRITE_LE_4(sc, SOTG_MODE, temp & ~SOTG_MODE_SNDRSU);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 125);
}
