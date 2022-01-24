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
typedef  scalar_t__ uint8_t ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVAR_CC ; 
 int /*<<< orphan*/  BWN_CHANNEL ; 
 int /*<<< orphan*/  BWN_CHANNEL_EXT ; 
 int BWN_HF_JAPAN_CHAN14_OFF ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 scalar_t__ BWN_SPROM1_CC_JP ; 
 scalar_t__ BWN_SPROM1_CC_WORLDWIDE ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(struct bwn_mac *mac, int channel, uint8_t spu)
{
	struct bwn_softc	*sc = mac->mac_sc;
	int			 error;

	if (spu != 0)
		FUNC6(mac, channel);

	FUNC1(mac, BWN_CHANNEL, FUNC5(channel));

	if (channel == 14) {
		uint8_t cc;

		error = FUNC2(sc->sc_dev, BHND_NVAR_CC, &cc);
		if (error) {
			FUNC7(sc->sc_dev, "error reading country code "
			    "from NVRAM, assuming channel 14 unavailable: %d\n",
			    error);
			cc = BWN_SPROM1_CC_WORLDWIDE;
		}

		if (cc == BWN_SPROM1_CC_JP)
			FUNC4(mac,
			    FUNC3(mac) & ~BWN_HF_JAPAN_CHAN14_OFF);
		else
			FUNC4(mac,
			    FUNC3(mac) | BWN_HF_JAPAN_CHAN14_OFF);
		FUNC1(mac, BWN_CHANNEL_EXT,
		    FUNC0(mac, BWN_CHANNEL_EXT) | (1 << 11));
		return;
	}

	FUNC1(mac, BWN_CHANNEL_EXT,
	    FUNC0(mac, BWN_CHANNEL_EXT) & 0xf7bf);
}