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
struct ndis_softc {int ndis_am_rid; int /*<<< orphan*/  ndis_dev; int /*<<< orphan*/ * ndis_res_am; int /*<<< orphan*/  ndis_rl; int /*<<< orphan*/  ndis_rescnt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int NDIS_AM_RID ; 
 int /*<<< orphan*/  PCCARD_A_MEM_ATTR ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct ndis_softc *sc)
{
	int error, rid;

	rid = NDIS_AM_RID;
	sc->ndis_res_am = FUNC2(sc->ndis_dev,
	    SYS_RES_MEMORY, &rid, 0x1000, RF_ACTIVE);

	if (sc->ndis_res_am == NULL) {
		FUNC4(sc->ndis_dev,
		    "failed to allocate attribute memory\n");
		return(ENXIO);
	}
	sc->ndis_rescnt++;
	FUNC5(&sc->ndis_rl, SYS_RES_MEMORY, rid,
	    FUNC8(sc->ndis_res_am), FUNC6(sc->ndis_res_am),
	    FUNC7(sc->ndis_res_am));

	error = FUNC0(FUNC3(sc->ndis_dev),
	    sc->ndis_dev, rid, 0, NULL);

	if (error) {
		FUNC4(sc->ndis_dev,
		    "CARD_SET_MEMORY_OFFSET() returned 0x%x\n", error);
		return(error);
	}

	error = FUNC1(FUNC3(sc->ndis_dev),
	    sc->ndis_dev, SYS_RES_MEMORY, rid, PCCARD_A_MEM_ATTR);

	if (error) {
		FUNC4(sc->ndis_dev,
		    "CARD_SET_RES_FLAGS() returned 0x%x\n", error);
		return(error);
	}

	sc->ndis_am_rid = rid;

	return(0);
}