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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ural_tx_desc {int plcp_signal; int plcp_service; int plcp_length_hi; int plcp_length_lo; scalar_t__ eiv; scalar_t__ iv; int /*<<< orphan*/  flags; int /*<<< orphan*/  wme; } ;
struct ieee80211com {int ic_flags; int /*<<< orphan*/  ic_rt; } ;
struct ural_softc {struct ieee80211com sc_ic; } ;
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CRC_LEN ; 
 int IEEE80211_F_SHPREAMBLE ; 
 scalar_t__ IEEE80211_T_OFDM ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int RAL_PLCP_LENGEXT ; 
 int RAL_TX_NEWSEQ ; 
 int RAL_TX_OFDM ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct ural_softc *sc, struct ural_tx_desc *desc,
    uint32_t flags, int len, int rate)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint16_t plcp_length;
	int remainder;

	desc->flags = FUNC6(flags);
	desc->flags |= FUNC6(RAL_TX_NEWSEQ);
	desc->flags |= FUNC6(len << 16);

	desc->wme = FUNC5(FUNC0(2) | FUNC3(3) | FUNC2(5));
	desc->wme |= FUNC5(FUNC1(sizeof (struct ieee80211_frame)));

	/* setup PLCP fields */
	desc->plcp_signal  = FUNC8(rate);
	desc->plcp_service = 4;

	len += IEEE80211_CRC_LEN;
	if (FUNC7(ic->ic_rt, rate) == IEEE80211_T_OFDM) {
		desc->flags |= FUNC6(RAL_TX_OFDM);

		plcp_length = len & 0xfff;
		desc->plcp_length_hi = plcp_length >> 6;
		desc->plcp_length_lo = plcp_length & 0x3f;
	} else {
		if (rate == 0)
			rate = 2;	/* avoid division by zero */
		plcp_length = FUNC4(16 * len, rate);
		if (rate == 22) {
			remainder = (16 * len) % 22;
			if (remainder != 0 && remainder < 7)
				desc->plcp_service |= RAL_PLCP_LENGEXT;
		}
		desc->plcp_length_hi = plcp_length >> 8;
		desc->plcp_length_lo = plcp_length & 0xff;

		if (rate != 2 && (ic->ic_flags & IEEE80211_F_SHPREAMBLE))
			desc->plcp_signal |= 0x08;
	}

	desc->iv = 0;
	desc->eiv = 0;
}