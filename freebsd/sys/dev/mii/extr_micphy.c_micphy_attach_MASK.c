#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mii_softc {scalar_t__ mii_mpd_model; } ;
typedef  int phandle_t ;
struct TYPE_3__ {int /*<<< orphan*/  phynode; } ;
typedef  TYPE_1__ mii_fdt_phy_config_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MIIF_NOMANPAUSE ; 
 scalar_t__ MII_MODEL_MICREL_KSZ8081 ; 
 scalar_t__ MII_MODEL_MICREL_KSZ9031 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mii_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  micphy_funcs ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	mii_fdt_phy_config_t *cfg;
	struct mii_softc *sc;
	phandle_t node;
	device_t miibus;
	device_t parent;

	sc = FUNC1(dev);

	FUNC5(dev, MIIF_NOMANPAUSE, &micphy_funcs, 1);
	FUNC6(sc);

	/* Nothing further to configure for 8081 model. */
	if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ8081)
		return (0);

	miibus = FUNC0(dev);
	parent = FUNC0(miibus);

	if ((node = FUNC7(parent)) == -1)
		return (ENXIO);

	cfg = FUNC4(dev);

	if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ9031)
		FUNC3(sc, cfg->phynode);
	else
		FUNC2(sc, cfg->phynode);

	return (0);
}