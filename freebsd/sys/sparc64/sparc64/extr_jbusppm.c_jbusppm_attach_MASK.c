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
typedef  scalar_t__ u_long ;
struct jbusppm_softc {int /*<<< orphan*/ ** sc_res; void** sc_bh; void** sc_bt; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int JBUSPPM_DEVID ; 
 int /*<<< orphan*/  JBUSPPM_DEVID_JID ; 
 int JBUSPPM_DEVID_JID_MASTER ; 
 int JBUSPPM_ESTAR ; 
 int /*<<< orphan*/  JBUSPPM_ESTAR_CTRL ; 
#define  JBUSPPM_ESTAR_CTRL_1 130 
#define  JBUSPPM_ESTAR_CTRL_2 129 
#define  JBUSPPM_ESTAR_CTRL_32 128 
 int JBUSPPM_ESTAR_CTRL_MASK ; 
 int FUNC0 (struct jbusppm_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 char* OFW_TYPE_PCI ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,scalar_t__,scalar_t__,void**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct jbusppm_softc* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct jbusppm_softc *sc;
	int i, rid;
#if 1
	device_t *children, tomatillo;
	u_long tcount, tstart, jcount, jstart;
	int j, nchildren;
#endif

	sc = FUNC9(dev);
	for (i = JBUSPPM_DEVID; i <= JBUSPPM_ESTAR; i++) {
		rid = i;
		/*
		 * The JBUSPPM_ESTAR resources is shared with that of the
		 * Tomatillo bus A controller configuration register bank.
		 */
#if 0
		sc->sc_res[i] = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
		    &rid, (i == JBUSPPM_ESTAR ? RF_SHAREABLE : 0) | RF_ACTIVE);
		if (sc->sc_res[i] == NULL) {
			device_printf(dev,
			    "could not allocate resource %d\n", i);
			goto fail;
		}
		sc->sc_bt[i] = rman_get_bustag(sc->sc_res[i]);
		sc->sc_bh[i] = rman_get_bushandle(sc->sc_res[i]);
#else
		/*
		 * Workaround for the fact that rman(9) only allows to
		 * share resources of the same size.
		 */
		if (i == JBUSPPM_ESTAR) {
			if (FUNC3(dev, SYS_RES_MEMORY, i, &jstart,
			    &jcount) != 0) {
				FUNC10(dev,
				    "could not determine Estar resource\n");
				goto fail;
			}
			if (FUNC7(FUNC8(dev),
			    &children, &nchildren) != 0) {
				FUNC10(dev, "could not get children\n");
				goto fail;
			}
			tomatillo = NULL;
			for (j = 0; j < nchildren; j++) {
				if (FUNC13(children[j]) != NULL &&
				    FUNC18(FUNC13(children[j]),
				    OFW_TYPE_PCI) == 0 &&
				    FUNC12(children[j]) != NULL &&
				    FUNC18(FUNC12(children[j]),
				    "pci108e,a801") == 0 &&
				    ((FUNC4(children[j],
				    SYS_RES_MEMORY, 0) >> 20) & 1) == 0) {
					tomatillo = children[j];
					break;
				}
			}
			FUNC11(children, M_TEMP);
			if (tomatillo == NULL) {
				FUNC10(dev,
				    "could not find Tomatillo\n");
				goto fail;
			}
			if (FUNC3(tomatillo, SYS_RES_MEMORY, 1,
			    &tstart, &tcount) != 0) {
				FUNC10(dev,
				    "could not determine Tomatillo "
				    "resource\n");
				goto fail;
			}
			sc->sc_res[i] = FUNC1(dev, SYS_RES_MEMORY,
			    &rid, tstart, tstart + tcount - 1, tcount,
			    RF_SHAREABLE | RF_ACTIVE);
		} else
			sc->sc_res[i] = FUNC2(dev,
			    SYS_RES_MEMORY, &rid, RF_ACTIVE);
		if (sc->sc_res[i] == NULL) {
			FUNC10(dev,
			    "could not allocate resource %d\n", i);
			goto fail;
		}
		sc->sc_bt[i] = FUNC16(sc->sc_res[i]);
		sc->sc_bh[i] = FUNC15(sc->sc_res[i]);
		if (i == JBUSPPM_ESTAR)
			FUNC6(sc->sc_bt[i], sc->sc_bh[i],
			    jstart - tstart, jcount, &sc->sc_bh[i]);
#endif
	}

	if (bootverbose) {
		if ((FUNC0(sc, JBUSPPM_DEVID, JBUSPPM_DEVID_JID) &
		    JBUSPPM_DEVID_JID_MASTER) != 0)
			FUNC10(dev, "master I/O bridge\n");
		FUNC10(dev, "running at ");
		switch (FUNC0(sc, JBUSPPM_ESTAR, JBUSPPM_ESTAR_CTRL) &
		    JBUSPPM_ESTAR_CTRL_MASK) {
		case JBUSPPM_ESTAR_CTRL_1:
			FUNC14("full");
			break;
		case JBUSPPM_ESTAR_CTRL_2:
			FUNC14("half");
			break;
		case JBUSPPM_ESTAR_CTRL_32:
			FUNC14("1/32");
			break;
		default:
			FUNC14("unknown");
			break;
		}
		FUNC14(" speed\n");
	}

	return (0);

 fail:
	for (i = JBUSPPM_DEVID; i <= JBUSPPM_ESTAR && sc->sc_res[i] != NULL;
	    i++)
		FUNC5(dev, SYS_RES_MEMORY,
		    FUNC17(sc->sc_res[i]), sc->sc_res[i]);
	return (ENXIO);
}