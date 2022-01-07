
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;


 int WPI_LOCK (struct wpi_softc*) ;
 int WPI_UNLOCK (struct wpi_softc*) ;
 int wpi_stop_locked (struct wpi_softc*) ;

__attribute__((used)) static void
wpi_stop(struct wpi_softc *sc)
{
 WPI_LOCK(sc);
 wpi_stop_locked(sc);
 WPI_UNLOCK(sc);
}
