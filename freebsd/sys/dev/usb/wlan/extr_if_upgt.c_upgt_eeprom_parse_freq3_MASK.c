#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct upgt_softc {struct upgt_lmac_freq3* sc_eeprom_freq3; } ;
struct upgt_lmac_freq3 {int /*<<< orphan*/  freq; } ;
struct upgt_eeprom_freq3_header {int flags; int elements; } ;
typedef  int /*<<< orphan*/  freq3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*,int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 unsigned int IEEE80211_CHAN_MAX ; 
 int /*<<< orphan*/  UPGT_DEBUG_FW ; 
 int UPGT_EEPROM_SIZE ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct upgt_softc *sc, uint8_t *data, int len)
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

	FUNC0(sc, UPGT_DEBUG_FW, "flags=0x%02x elements=%d\n",
	    flags, elements);

	if (elements >= (int)(UPGT_EEPROM_SIZE / sizeof(freq3[0])))
		return;

	for (i = 0; i < elements; i++) {
		channel = FUNC1(FUNC2(freq3[i].freq), 0);
		if (channel >= IEEE80211_CHAN_MAX)
			continue;

		sc->sc_eeprom_freq3[channel] = freq3[i];

		FUNC0(sc, UPGT_DEBUG_FW, "frequence=%d, channel=%d\n",
		    FUNC2(sc->sc_eeprom_freq3[channel].freq), channel);
	}
}