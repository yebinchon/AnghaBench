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
typedef  int /*<<< orphan*/  uint32_t ;
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct sbbc_softc {int /*<<< orphan*/ * sc_res; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  node ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,int*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SBBC_PCI_BAR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SBBC_TOD_MAGIC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBBC_TOD_VERSION ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct sbbc_softc* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ sbbc_console ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ sbbc_toddata ; 
 int /*<<< orphan*/  tod_magic ; 
 int /*<<< orphan*/  tod_version ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct sbbc_softc *sc;
	struct timespec ts;
	device_t child;
	bus_space_tag_t bst;
	bus_space_handle_t bsh;
	phandle_t node;
	int error, rid;
	uint32_t val;

	/* Nothing to do if we're not the chosen one. */
	if ((node = FUNC0("/chosen")) == -1) {
		FUNC10(dev, "failed to find /chosen\n");
		return (ENXIO);
	}
	if (FUNC1(node, "iosram", &node, sizeof(node)) == -1) {
		FUNC10(dev, "failed to get iosram\n");
		return (ENXIO);
	}
	if (node != FUNC11(dev))
		return (0);

	sc = FUNC9(dev);
	rid = SBBC_PCI_BAR;
	sc->sc_res = FUNC4(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_res == NULL) {
		FUNC10(dev, "failed to allocate resources\n");
		return (ENXIO);
	}
	bst = FUNC15(sc->sc_res);
	bsh = FUNC14(sc->sc_res);
	if (sbbc_console != 0) {
		/* Once again the interrupt pin isn't set. */
		if (FUNC12(dev) == 0)
			FUNC13(dev, 1);
		child = FUNC8(dev, NULL, -1);
		if (child == NULL)
			FUNC10(dev, "failed to add UART device\n");
		error = FUNC5(dev);
		if (error != 0)
			FUNC10(dev, "failed to attach UART device\n");
	} else {
		error = FUNC16(bst, bsh);
		if (error != 0) {
			FUNC10(dev, "failed to parse TOC\n");
			if (sbbc_console != 0) {
				FUNC6(dev, SYS_RES_MEMORY, rid,
				    sc->sc_res);
				return (error);
			}
		}
	}
	if (sbbc_toddata != 0) {
		if ((val = FUNC2(sbbc_toddata +
		    FUNC3(tod_magic))) != SBBC_TOD_MAGIC)
			FUNC10(dev, "invalid TOD magic %#x\n", val);
		else if ((val = FUNC2(sbbc_toddata +
		    FUNC3(tod_version))) < SBBC_TOD_VERSION)
			FUNC10(dev, "invalid TOD version %#x\n", val);
		else {
			FUNC7(dev, 1000000); /* 1 sec. resolution */
			if (bootverbose) {
				FUNC17(dev, &ts);
				FUNC10(dev,
				    "current time: %ld.%09ld\n",
				    (long)ts.tv_sec, ts.tv_nsec);
			}
		}
	}
	return (0);
}