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
struct arswitch_softc {int /*<<< orphan*/  sc_dev; } ;
struct ar8327_sgmii_cfg {int sgmii_ctrl; int serdes_aen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC3(struct arswitch_softc *sc,
    struct ar8327_sgmii_cfg *scfg)
{
	int val;

	/* sgmii_ctrl */
	val = 0;
	if (FUNC2(FUNC0(sc->sc_dev),
	    FUNC1(sc->sc_dev),
	    "sgmii.ctrl", &val) != 0)
		return (0);
	scfg->sgmii_ctrl = val;

	/* serdes_aen */
	val = 0;
	if (FUNC2(FUNC0(sc->sc_dev),
	    FUNC1(sc->sc_dev),
	    "sgmii.serdes_aen", &val) != 0)
		return (0);
	scfg->serdes_aen = val;

	return (1);
}