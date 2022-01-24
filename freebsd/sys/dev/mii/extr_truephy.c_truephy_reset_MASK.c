#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct truephy_dsp {int index; int data; } ;
struct mii_softc {scalar_t__ mii_mpd_model; TYPE_1__* mii_pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  mii_ifp; } ;

/* Variables and functions */
 int BMCR_AUTOEN ; 
 int BMCR_PDOWN ; 
 int BMCR_S1000 ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ MII_MODEL_AGERE_ET1011 ; 
 int /*<<< orphan*/  MII_PHYIDR1 ; 
 int /*<<< orphan*/  MII_PHYIDR2 ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUEPHY_CONF ; 
 int TRUEPHY_CONF_TXFIFO_24 ; 
 int TRUEPHY_CONF_TXFIFO_MASK ; 
 int /*<<< orphan*/  TRUEPHY_CTRL ; 
 int TRUEPHY_CTRL_DIAG ; 
 int TRUEPHY_CTRL_RSV0 ; 
 int TRUEPHY_CTRL_RSV1 ; 
 int /*<<< orphan*/  TRUEPHY_DATA ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  TRUEPHY_INDEX ; 
 int TRUEPHY_INDEX_MAGIC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*) ; 
 int FUNC5 (struct truephy_dsp*) ; 
 struct truephy_dsp* truephy_dspcode ; 

__attribute__((used)) static void
FUNC6(struct mii_softc *sc)
{
	int i;

	if (sc->mii_mpd_model == MII_MODEL_AGERE_ET1011) {
		FUNC4(sc);
		return;
	}

	for (i = 0; i < 2; ++i) {
		FUNC0(sc, MII_PHYIDR1);
		FUNC0(sc, MII_PHYIDR2);

		FUNC0(sc, TRUEPHY_CTRL);
		FUNC1(sc, TRUEPHY_CTRL,
			  TRUEPHY_CTRL_DIAG | TRUEPHY_CTRL_RSV1);

		FUNC1(sc, TRUEPHY_INDEX, TRUEPHY_INDEX_MAGIC);
		FUNC0(sc, TRUEPHY_DATA);

		FUNC1(sc, TRUEPHY_CTRL, TRUEPHY_CTRL_RSV1);
	}

	FUNC0(sc, MII_BMCR);
	FUNC0(sc, TRUEPHY_CTRL);
	FUNC1(sc, MII_BMCR, BMCR_AUTOEN | BMCR_PDOWN | BMCR_S1000);
	FUNC1(sc, TRUEPHY_CTRL,
		  TRUEPHY_CTRL_DIAG | TRUEPHY_CTRL_RSV1 | TRUEPHY_CTRL_RSV0);

	for (i = 0; i < FUNC5(truephy_dspcode); ++i) {
		const struct truephy_dsp *dsp = &truephy_dspcode[i];

		FUNC1(sc, TRUEPHY_INDEX, dsp->index);
		FUNC1(sc, TRUEPHY_DATA, dsp->data);

		FUNC1(sc, TRUEPHY_INDEX, dsp->index);
		FUNC0(sc, TRUEPHY_DATA);
	}

	FUNC0(sc, MII_BMCR);
	FUNC0(sc, TRUEPHY_CTRL);
	FUNC1(sc, MII_BMCR, BMCR_AUTOEN |  BMCR_S1000);
	FUNC1(sc, TRUEPHY_CTRL, TRUEPHY_CTRL_RSV1);

	FUNC4(sc);

	if (FUNC2((FUNC3(sc->mii_pdata->mii_ifp)) > 2048)) {
		int conf;

		conf = FUNC0(sc, TRUEPHY_CONF);
		conf &= ~TRUEPHY_CONF_TXFIFO_MASK;
		conf |= TRUEPHY_CONF_TXFIFO_24;
		FUNC1(sc, TRUEPHY_CONF, conf);
	}
}