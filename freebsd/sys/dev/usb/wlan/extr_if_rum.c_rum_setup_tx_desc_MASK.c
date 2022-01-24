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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct wmeParams {int /*<<< orphan*/  wmep_logcwmax; int /*<<< orphan*/  wmep_logcwmin; int /*<<< orphan*/  wmep_aifsn; } ;
struct rum_tx_desc {int plcp_signal; int plcp_service; int plcp_length_hi; int plcp_length_lo; int hdrlen; size_t xflags; int /*<<< orphan*/  wme; int /*<<< orphan*/  flags; int /*<<< orphan*/  iv; scalar_t__ eiv; } ;
struct ieee80211com {int ic_flags; int /*<<< orphan*/  ic_rt; } ;
struct rum_softc {struct wmeParams* wme_params; struct ieee80211com sc_ic; } ;
struct ieee80211_key {int wk_flags; struct ieee80211_cipher* wk_cipher; } ;
struct ieee80211_cipher {int /*<<< orphan*/  (* ic_setiv ) (struct ieee80211_key*,size_t*) ;scalar_t__ ic_miclen; scalar_t__ ic_trailer; scalar_t__ ic_header; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CRC_LEN ; 
 int IEEE80211_F_SHPREAMBLE ; 
 int IEEE80211_KEY_SWCRYPT ; 
 scalar_t__ IEEE80211_T_OFDM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RT2573_PLCP_LENGEXT ; 
 int FUNC3 (size_t) ; 
 int RT2573_TX_OFDM ; 
 int RT2573_TX_VALID ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_key*,size_t*) ; 

__attribute__((used)) static void
FUNC10(struct rum_softc *sc, struct rum_tx_desc *desc,
    struct ieee80211_key *k, uint32_t flags, uint8_t xflags, uint8_t qid,
    int hdrlen, int len, int rate)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct wmeParams *wmep = &sc->wme_params[qid];
	uint16_t plcp_length;
	int remainder;

	flags |= RT2573_TX_VALID;
	flags |= len << 16;

	if (k != NULL && !(k->wk_flags & IEEE80211_KEY_SWCRYPT)) {
		const struct ieee80211_cipher *cip = k->wk_cipher;

		len += cip->ic_header + cip->ic_trailer + cip->ic_miclen;

		desc->eiv = 0;		/* for WEP */
		cip->ic_setiv(k, (uint8_t *)&desc->iv);
	}

	/* setup PLCP fields */
	desc->plcp_signal  = FUNC8(rate);
	desc->plcp_service = 4;

	len += IEEE80211_CRC_LEN;
	if (FUNC7(ic->ic_rt, rate) == IEEE80211_T_OFDM) {
		flags |= RT2573_TX_OFDM;

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
				desc->plcp_service |= RT2573_PLCP_LENGEXT;
		}
		desc->plcp_length_hi = plcp_length >> 8;
		desc->plcp_length_lo = plcp_length & 0xff;

		if (rate != 2 && (ic->ic_flags & IEEE80211_F_SHPREAMBLE))
			desc->plcp_signal |= 0x08;
	}

	desc->flags = FUNC6(flags);
	desc->hdrlen = hdrlen;
	desc->xflags = xflags;

	desc->wme = FUNC5(FUNC3(qid) |
	    FUNC0(wmep->wmep_aifsn) |
	    FUNC2(wmep->wmep_logcwmin) |
	    FUNC1(wmep->wmep_logcwmax));
}