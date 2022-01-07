
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int calib_to; } ;


 int callout_reset (int *,int,void (*) (void*),struct wpi_softc*) ;
 int hz ;
 scalar_t__ wpi_check_bss_filter (struct wpi_softc*) ;
 int wpi_power_calibration (struct wpi_softc*) ;

__attribute__((used)) static void
wpi_calib_timeout(void *arg)
{
 struct wpi_softc *sc = arg;

 if (wpi_check_bss_filter(sc) == 0)
  return;

 wpi_power_calibration(sc);

 callout_reset(&sc->calib_to, 60*hz, wpi_calib_timeout, sc);
}
