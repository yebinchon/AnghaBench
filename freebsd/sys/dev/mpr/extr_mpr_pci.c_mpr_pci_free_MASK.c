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
struct mpr_softc {int mpr_flags; int /*<<< orphan*/ * mpr_regs_resource; int /*<<< orphan*/  mpr_regs_rid; int /*<<< orphan*/  mpr_dev; int /*<<< orphan*/ * mpr_parent_dmat; } ;

/* Variables and functions */
 int MPR_FLAGS_MSI ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mpr_softc *sc)
{

	if (sc->mpr_parent_dmat != NULL) {
		FUNC0(sc->mpr_parent_dmat);
	}

	FUNC2(sc);

	if (sc->mpr_flags & MPR_FLAGS_MSI)
		FUNC3(sc->mpr_dev);

	if (sc->mpr_regs_resource != NULL) {
		FUNC1(sc->mpr_dev, SYS_RES_MEMORY,
		    sc->mpr_regs_rid, sc->mpr_regs_resource);
	}

	return;
}