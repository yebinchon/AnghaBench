
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;
struct ieee80211com {struct wpi_softc* ic_softc; } ;


 int WPI_LED_LINK ;
 int wpi_set_led (struct wpi_softc*,int ,int,int) ;

__attribute__((used)) static void
wpi_scan_start(struct ieee80211com *ic)
{
 struct wpi_softc *sc = ic->ic_softc;

 wpi_set_led(sc, WPI_LED_LINK, 20, 2);
}
