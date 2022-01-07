
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct upgt_softc {struct upgt_lmac_freq6* sc_eeprom_freq6; } ;
struct upgt_lmac_freq6 {int freq; } ;
typedef int freq6 ;


 int DPRINTF (struct upgt_softc*,int ,char*,int,...) ;
 unsigned int IEEE80211_CHAN_MAX ;
 int UPGT_DEBUG_FW ;
 int UPGT_EEPROM_SIZE ;
 unsigned int ieee80211_mhz2ieee (int ,int ) ;
 int le16toh (int ) ;

void
upgt_eeprom_parse_freq6(struct upgt_softc *sc, uint8_t *data, int len)
{
 struct upgt_lmac_freq6 *freq6;
 int i;
 int elements;
 unsigned channel;

 freq6 = (struct upgt_lmac_freq6 *)data;
 elements = len / sizeof(struct upgt_lmac_freq6);

 DPRINTF(sc, UPGT_DEBUG_FW, "elements=%d\n", elements);

 if (elements >= (int)(UPGT_EEPROM_SIZE / sizeof(freq6[0])))
  return;

 for (i = 0; i < elements; i++) {
  channel = ieee80211_mhz2ieee(le16toh(freq6[i].freq), 0);
  if (channel >= IEEE80211_CHAN_MAX)
   continue;

  sc->sc_eeprom_freq6[channel] = freq6[i];

  DPRINTF(sc, UPGT_DEBUG_FW, "frequence=%d, channel=%d\n",
      le16toh(sc->sc_eeprom_freq6[channel].freq), channel);
 }
}
