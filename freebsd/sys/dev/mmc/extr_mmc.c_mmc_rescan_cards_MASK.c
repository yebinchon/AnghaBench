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
struct mmc_softc {int child_count; int /*<<< orphan*/ * child_list; int /*<<< orphan*/  dev; } ;
struct mmc_ivars {int /*<<< orphan*/  rca; } ;

/* Variables and functions */
 scalar_t__ MMC_ERR_NONE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ bootverbose ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mmc_ivars* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_ivars*,int /*<<< orphan*/ ) ; 
 scalar_t__ mmc_debug ; 
 scalar_t__ FUNC4 (struct mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_softc*) ; 

__attribute__((used)) static void
FUNC6(struct mmc_softc *sc)
{
	struct mmc_ivars *ivar;
	int err, i, j;

	for (i = j = 0; i < sc->child_count; i++) {
		ivar = FUNC1(sc->child_list[i]);
		if (FUNC4(sc, ivar->rca) != MMC_ERR_NONE) {
			if (bootverbose || mmc_debug)
				FUNC2(sc->dev,
				    "Card at relative address %d lost\n",
				    ivar->rca);
			err = FUNC0(sc->dev, sc->child_list[i]);
			if (err != 0) {
				j++;
				continue;
			}
			FUNC3(ivar, M_DEVBUF);
		} else
			j++;
	}
	if (sc->child_count == j)
		goto out;
	sc->child_count = j;
	FUNC5(sc);
out:
	(void)FUNC4(sc, 0);
}