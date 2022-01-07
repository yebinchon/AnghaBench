
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct upgt_softc {int sc_eeprom_freq6_settings; TYPE_1__** sc_eeprom_freq4; } ;
struct upgt_eeprom_freq4_header {int flags; int elements; int settings; } ;
struct upgt_eeprom_freq4_2 {int dummy; } ;
struct upgt_eeprom_freq4_1 {int freq; scalar_t__ data; } ;
typedef int freq4_1 ;
struct TYPE_2__ {scalar_t__ pad; struct upgt_eeprom_freq4_2 cmd; } ;


 int DPRINTF (struct upgt_softc*,int ,char*,int,unsigned int,...) ;
 unsigned int IEEE80211_CHAN_MAX ;
 int UPGT_DEBUG_FW ;
 int UPGT_EEPROM_SIZE ;
 unsigned int ieee80211_mhz2ieee (int ,int ) ;
 int le16toh (int ) ;

void
upgt_eeprom_parse_freq4(struct upgt_softc *sc, uint8_t *data, int len)
{
 struct upgt_eeprom_freq4_header *freq4_header;
 struct upgt_eeprom_freq4_1 *freq4_1;
 struct upgt_eeprom_freq4_2 *freq4_2;
 int i;
 int j;
 int elements;
 int settings;
 int flags;
 unsigned channel;

 freq4_header = (struct upgt_eeprom_freq4_header *)data;
 freq4_1 = (struct upgt_eeprom_freq4_1 *)(freq4_header + 1);
 flags = freq4_header->flags;
 elements = freq4_header->elements;
 settings = freq4_header->settings;


 sc->sc_eeprom_freq6_settings = freq4_header->settings;

 DPRINTF(sc, UPGT_DEBUG_FW, "flags=0x%02x elements=%d settings=%d\n",
     flags, elements, settings);

 if (elements >= (int)(UPGT_EEPROM_SIZE / sizeof(freq4_1[0])))
  return;

 for (i = 0; i < elements; i++) {
  channel = ieee80211_mhz2ieee(le16toh(freq4_1[i].freq), 0);
  if (channel >= IEEE80211_CHAN_MAX)
   continue;

  freq4_2 = (struct upgt_eeprom_freq4_2 *)freq4_1[i].data;
  for (j = 0; j < settings; j++) {
   sc->sc_eeprom_freq4[channel][j].cmd = freq4_2[j];
   sc->sc_eeprom_freq4[channel][j].pad = 0;
  }

  DPRINTF(sc, UPGT_DEBUG_FW, "frequence=%d, channel=%d\n",
      le16toh(freq4_1[i].freq), channel);
 }
}
