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
struct mps_softc {int mps_flags; int /*<<< orphan*/ * mps_regs_resource; int /*<<< orphan*/  mps_regs_rid; int /*<<< orphan*/  mps_dev; int /*<<< orphan*/ * mps_parent_dmat; } ;

/* Variables and functions */
 int MPS_FLAGS_MSI ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mps_softc *sc)
{

	if (sc->mps_parent_dmat != NULL) {
		FUNC0(sc->mps_parent_dmat);
	}

	FUNC2(sc);

	if (sc->mps_flags & MPS_FLAGS_MSI)
		FUNC3(sc->mps_dev);

	if (sc->mps_regs_resource != NULL) {
		FUNC1(sc->mps_dev, SYS_RES_MEMORY,
		    sc->mps_regs_rid, sc->mps_regs_resource);
	}

	return;
}