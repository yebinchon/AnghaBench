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
typedef  int uint32_t ;
struct viawd_softc {int /*<<< orphan*/ * wd_res; int /*<<< orphan*/  wd_rid; int /*<<< orphan*/  sb_dev; int /*<<< orphan*/ * ev_tag; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VIAWD_MEM_CTRL ; 
 int VIAWD_MEM_CTRL_ENABLE ; 
 int /*<<< orphan*/  VIAWD_TIMEOUT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct viawd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct viawd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct viawd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct viawd_softc*,int) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct viawd_softc *sc;
	uint32_t reg;

	sc = FUNC2(dev);

	/* Deregister event handler. */
	if (sc->ev_tag != NULL)
		FUNC0(watchdog_list, sc->ev_tag);
	sc->ev_tag = NULL;

	/*
	 * Do not stop the watchdog on shutdown if active but bump the
	 * timer to avoid spurious reset.
	 */
	reg = FUNC4(sc, VIAWD_MEM_CTRL);
	if (reg & VIAWD_MEM_CTRL_ENABLE) {
		FUNC5(sc, VIAWD_TIMEOUT_SHUTDOWN);
		FUNC6(sc, 1);
		FUNC3(dev,
		    "Keeping watchog alive during shutdown for %d seconds\n",
		    VIAWD_TIMEOUT_SHUTDOWN);
	}

	if (sc->wd_res != NULL)
		FUNC1(sc->sb_dev, SYS_RES_MEMORY,
		    sc->wd_rid, sc->wd_res);

	return (0);
}