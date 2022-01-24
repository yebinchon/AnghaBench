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
struct ntb_plx_softc {int mw_count; int /*<<< orphan*/  conf_res; int /*<<< orphan*/  conf_rid; struct ntb_plx_mw_info* mw_info; } ;
struct ntb_plx_mw_info {int /*<<< orphan*/  mw_res; int /*<<< orphan*/  mw_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ntb_plx_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ntb_plx_softc *sc = FUNC1(dev);
	struct ntb_plx_mw_info *mw;
	int i;

	/* Detach & delete all children */
	FUNC3(dev);

	/* Disable and free interrupts. */
	FUNC2(dev);

	/* Free memory resources. */
	for (i = 0; i < sc->mw_count; i++) {
		mw = &sc->mw_info[i];
		FUNC0(dev, SYS_RES_MEMORY, mw->mw_rid,
		    mw->mw_res);
	}
	FUNC0(dev, SYS_RES_MEMORY, sc->conf_rid, sc->conf_res);
	return (0);
}