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
struct nfe_softc {int nfe_msix; int /*<<< orphan*/ * nfe_msix_res; int /*<<< orphan*/ * nfe_msix_pba_res; int /*<<< orphan*/  nfe_dev; } ;

/* Variables and functions */
 int NFE_MSI_MESSAGES ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct nfe_softc *sc, int count)
{
	int rid;

	rid = FUNC0(2);
	sc->nfe_msix_res = FUNC1(sc->nfe_dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (sc->nfe_msix_res == NULL) {
		FUNC3(sc->nfe_dev,
		    "couldn't allocate MSIX table resource\n");
		return;
	}
	rid = FUNC0(3);
	sc->nfe_msix_pba_res = FUNC1(sc->nfe_dev,
	    SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->nfe_msix_pba_res == NULL) {
		FUNC3(sc->nfe_dev,
		    "couldn't allocate MSIX PBA resource\n");
		FUNC2(sc->nfe_dev, SYS_RES_MEMORY, FUNC0(2),
		    sc->nfe_msix_res);
		sc->nfe_msix_res = NULL;
		return;
	}

	if (FUNC4(sc->nfe_dev, &count) == 0) {
		if (count == NFE_MSI_MESSAGES) {
			if (bootverbose)
				FUNC3(sc->nfe_dev,
				    "Using %d MSIX messages\n", count);
			sc->nfe_msix = 1;
		} else {
			if (bootverbose)
				FUNC3(sc->nfe_dev,
				    "couldn't allocate MSIX\n");
			FUNC5(sc->nfe_dev);
			FUNC2(sc->nfe_dev, SYS_RES_MEMORY,
			    FUNC0(3), sc->nfe_msix_pba_res);
			FUNC2(sc->nfe_dev, SYS_RES_MEMORY,
			    FUNC0(2), sc->nfe_msix_res);
			sc->nfe_msix_pba_res = NULL;
			sc->nfe_msix_res = NULL;
		}
	}
}