
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {scalar_t__ init_state; int dev; int enp; } ;


 int DELAY (int) ;
 int SFXGE_ADAPTER_LOCK (struct sfxge_softc*) ;
 int SFXGE_ADAPTER_UNLOCK (struct sfxge_softc*) ;
 scalar_t__ SFXGE_STARTED ;
 int device_printf (int ,char*,...) ;
 int efx_nic_reset (int ) ;
 unsigned int sfxge_restart_attempts ;
 int sfxge_start (struct sfxge_softc*) ;
 int sfxge_stop (struct sfxge_softc*) ;

__attribute__((used)) static void
sfxge_reset(void *arg, int npending)
{
 struct sfxge_softc *sc;
 int rc;
 unsigned attempt;

 (void)npending;

 sc = (struct sfxge_softc *)arg;

 SFXGE_ADAPTER_LOCK(sc);

 if (sc->init_state != SFXGE_STARTED)
  goto done;

 sfxge_stop(sc);
 efx_nic_reset(sc->enp);
 for (attempt = 0; attempt < sfxge_restart_attempts; ++attempt) {
  if ((rc = sfxge_start(sc)) == 0)
   goto done;

  device_printf(sc->dev, "start on reset failed (%d)\n", rc);
  DELAY(100000);
 }

 device_printf(sc->dev, "reset failed; interface is now stopped\n");

done:
 SFXGE_ADAPTER_UNLOCK(sc);
}
