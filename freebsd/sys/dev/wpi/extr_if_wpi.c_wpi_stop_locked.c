
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {scalar_t__ sc_running; int calib_to; int scan_timeout; int tx_timeout; } ;


 int WPI_LOCK_ASSERT (struct wpi_softc*) ;
 int WPI_RXON_LOCK (struct wpi_softc*) ;
 int WPI_RXON_UNLOCK (struct wpi_softc*) ;
 int WPI_TXQ_LOCK (struct wpi_softc*) ;
 int WPI_TXQ_STATE_LOCK (struct wpi_softc*) ;
 int WPI_TXQ_STATE_UNLOCK (struct wpi_softc*) ;
 int WPI_TXQ_UNLOCK (struct wpi_softc*) ;
 int WPI_TX_LOCK (struct wpi_softc*) ;
 int WPI_TX_UNLOCK (struct wpi_softc*) ;
 int callout_stop (int *) ;
 int wpi_hw_stop (struct wpi_softc*) ;

__attribute__((used)) static void
wpi_stop_locked(struct wpi_softc *sc)
{

 WPI_LOCK_ASSERT(sc);

 if (sc->sc_running == 0)
  return;

 WPI_TX_LOCK(sc);
 WPI_TXQ_LOCK(sc);
 sc->sc_running = 0;
 WPI_TXQ_UNLOCK(sc);
 WPI_TX_UNLOCK(sc);

 WPI_TXQ_STATE_LOCK(sc);
 callout_stop(&sc->tx_timeout);
 WPI_TXQ_STATE_UNLOCK(sc);

 WPI_RXON_LOCK(sc);
 callout_stop(&sc->scan_timeout);
 callout_stop(&sc->calib_to);
 WPI_RXON_UNLOCK(sc);


 wpi_hw_stop(sc);
}
