
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;
struct ieee80211com {struct wpi_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;


 int WPI_CHAN_BANDS_COUNT ;
 int wpi_read_eeprom_band (struct wpi_softc*,int,int,int*,struct ieee80211_channel*) ;

__attribute__((used)) static void
wpi_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct wpi_softc *sc = ic->ic_softc;
 int i;


 for (i = 0; i < WPI_CHAN_BANDS_COUNT && *nchans < maxchans; i++)
  wpi_read_eeprom_band(sc, i, maxchans, nchans, chans);
}
