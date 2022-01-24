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
struct ieee80211com {int /*<<< orphan*/  ic_curchan; } ;
struct malo_softc {int /*<<< orphan*/  malo_txantenna; int /*<<< orphan*/  malo_rxantenna; struct malo_hal* malo_mh; struct ieee80211com malo_ic; } ;
struct malo_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MHA_ANTENNATYPE_RX ; 
 int /*<<< orphan*/  MHA_ANTENNATYPE_TX ; 
 int /*<<< orphan*/  MHP_AUTO_PREAMBLE ; 
 int /*<<< orphan*/  FUNC0 (struct malo_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct malo_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct malo_hal*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct malo_softc *sc)
{
	static int first = 0;
	struct ieee80211com *ic = &sc->malo_ic;
	struct malo_hal *mh = sc->malo_mh;

	if (first == 0) {
		/*
		 * NB: when the device firstly is initialized, sometimes
		 * firmware could override rx/tx dma registers so we re-set
		 * these values once.
		 */
		FUNC1(sc);
		first = 1;
	}

	FUNC2(mh, MHA_ANTENNATYPE_RX, sc->malo_rxantenna);
	FUNC2(mh, MHA_ANTENNATYPE_TX, sc->malo_txantenna);
	FUNC3(mh, 1, MHP_AUTO_PREAMBLE);
	FUNC0(sc, ic->ic_curchan);

	/* XXX needs other stuffs?  */

	return 1;
}