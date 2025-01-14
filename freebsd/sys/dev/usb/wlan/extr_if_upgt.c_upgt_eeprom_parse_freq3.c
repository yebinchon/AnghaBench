
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct upgt_softc {struct upgt_lmac_freq3* sc_eeprom_freq3; } ;
struct upgt_lmac_freq3 {int freq; } ;
struct upgt_eeprom_freq3_header {int flags; int elements; } ;
typedef int freq3 ;


 int DPRINTF (struct upgt_softc*,int ,char*,int,unsigned int) ;
 unsigned int IEEE80211_CHAN_MAX ;
 int UPGT_DEBUG_FW ;
 int UPGT_EEPROM_SIZE ;
 unsigned int ieee80211_mhz2ieee (int,int ) ;
 int le16toh (int ) ;

__attribute__((used)) static void
upgt_eeprom_parse_freq3(struct upgt_softc *sc, uint8_t *data, int len)
{
 struct upgt_eeprom_freq3_header *freq3_header;
 struct upgt_lmac_freq3 *freq3;
 int i;
 int elements;
 int flags;
 unsigned channel;

 freq3_header = (struct upgt_eeprom_freq3_header *)data;
 freq3 = (struct upgt_lmac_freq3 *)(freq3_header + 1);

 flags = freq3_header->flags;
 elements = freq3_header->elements;

 DPRINTF(sc, UPGT_DEBUG_FW, "flags=0x%02x elements=%d\n",
     flags, elements);

 if (elements >= (int)(UPGT_EEPROM_SIZE / sizeof(freq3[0])))
  return;

 for (i = 0; i < elements; i++) {
  channel = ieee80211_mhz2ieee(le16toh(freq3[i].freq), 0);
  if (channel >= IEEE80211_CHAN_MAX)
   continue;

  sc->sc_eeprom_freq3[channel] = freq3[i];

  DPRINTF(sc, UPGT_DEBUG_FW, "frequence=%d, channel=%d\n",
      le16toh(sc->sc_eeprom_freq3[channel].freq), channel);
 }
}
