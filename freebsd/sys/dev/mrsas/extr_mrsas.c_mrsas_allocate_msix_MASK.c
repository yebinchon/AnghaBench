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
struct mrsas_softc {int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  msix_vectors; } ;

/* Variables and functions */
 int FAIL ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct mrsas_softc *sc)
{
	if (FUNC2(sc->mrsas_dev, &sc->msix_vectors) == 0) {
		FUNC0(sc->mrsas_dev, "Using MSI-X with %d number"
		    " of vectors\n", sc->msix_vectors);
	} else {
		FUNC0(sc->mrsas_dev, "MSI-x setup failed\n");
		goto irq_alloc_failed;
	}
	return SUCCESS;

irq_alloc_failed:
	FUNC1(sc);
	return (FAIL);
}