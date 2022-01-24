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
typedef  int /*<<< orphan*/  uint16_t ;
struct smc_softc {int /*<<< orphan*/  smc_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFM_FDX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_softc*) ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  TCR_SWFDUP ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct smc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(device_t dev)
{
	struct smc_softc	*sc;
	struct mii_data		*mii;
	uint16_t		tcr;

	sc = FUNC3(dev);
	mii = FUNC3(sc->smc_miibus);

	FUNC1(sc);

	FUNC5(sc, 0);
	tcr = FUNC4(sc, TCR);

	if ((FUNC0(mii->mii_media_active) & IFM_FDX) != 0)
		tcr |= TCR_SWFDUP;
	else
		tcr &= ~TCR_SWFDUP;

	FUNC6(sc, TCR, tcr);

	FUNC2(sc);
}