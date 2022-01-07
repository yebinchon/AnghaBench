
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpi_softc {struct wpi_eeprom_chan** eeprom_channels; } ;
struct wpi_eeprom_chan {int dummy; } ;
struct ieee80211_channel {scalar_t__ ic_ieee; } ;
struct TYPE_2__ {int nchan; scalar_t__* chan; } ;


 int IEEE80211_IS_CHAN_A (struct ieee80211_channel*) ;
 int WPI_CHAN_BANDS_COUNT ;
 TYPE_1__* wpi_bands ;

__attribute__((used)) static struct wpi_eeprom_chan *
wpi_find_eeprom_channel(struct wpi_softc *sc, struct ieee80211_channel *c)
{
 int i, j;

 for (j = 0; j < WPI_CHAN_BANDS_COUNT; j++)
  for (i = 0; i < wpi_bands[j].nchan; i++)
   if (wpi_bands[j].chan[i] == c->ic_ieee &&
       ((j == 0) ^ IEEE80211_IS_CHAN_A(c)) == 1)
    return &sc->eeprom_channels[j][i];

 return ((void*)0);
}
