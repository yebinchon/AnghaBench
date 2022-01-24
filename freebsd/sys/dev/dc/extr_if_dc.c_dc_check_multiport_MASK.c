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
typedef  int /*<<< orphan*/  uint8_t ;
struct dc_softc {scalar_t__ dc_romwidth; int /*<<< orphan*/ * dc_srom; int /*<<< orphan*/ * dc_dev; int /*<<< orphan*/ * dc_eaddr; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  devclass_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct dc_softc* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct dc_softc *sc)
{
	struct dc_softc *dsc;
	devclass_t dc;
	device_t child;
	uint8_t *eaddr;
	int unit;

	dc = FUNC3("dc");
	for (unit = 0; unit < FUNC5(dc); unit++) {
		child = FUNC4(dc, unit);
		if (child == NULL)
			continue;
		if (child == sc->dc_dev)
			continue;
		if (FUNC7(child) != FUNC7(sc->dc_dev))
			continue;
		if (unit > FUNC9(sc->dc_dev))
			continue;
		if (FUNC10(child) == 0)
			continue;
		dsc = FUNC8(child);
		FUNC11(sc->dc_dev,
		    "Using station address of %s as base\n",
		    FUNC6(child));
		FUNC2(dsc->dc_eaddr, sc->dc_eaddr, ETHER_ADDR_LEN);
		eaddr = (uint8_t *)sc->dc_eaddr;
		eaddr[5]++;
		/* Prepare SROM to parse again. */
		if (FUNC0(sc) && dsc->dc_srom != NULL &&
		    sc->dc_romwidth != 0) {
			FUNC12(sc->dc_srom, M_DEVBUF);
			sc->dc_romwidth = dsc->dc_romwidth;
			sc->dc_srom = FUNC13(FUNC1(sc->dc_romwidth),
			    M_DEVBUF, M_NOWAIT);
			if (sc->dc_srom == NULL) {
				FUNC11(sc->dc_dev,
				    "Could not allocate SROM buffer\n");
				return (ENOMEM);
			}
			FUNC2(dsc->dc_srom, sc->dc_srom,
			    FUNC1(sc->dc_romwidth));
		}
		return (0);
	}
	return (ENOENT);
}