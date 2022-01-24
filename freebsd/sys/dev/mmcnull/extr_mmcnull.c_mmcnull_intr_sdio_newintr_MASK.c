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
struct mmcnull_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  sim; int /*<<< orphan*/  sc_mtx; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_UNIT_ATTENTION ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*) ; 

__attribute__((used)) static void
FUNC6(void *xsc) {
	struct mmcnull_softc *sc;
	struct cam_path *dpath;

	sc = (struct mmcnull_softc *) xsc;
	FUNC2(&sc->sc_mtx, MA_OWNED);
	FUNC1(sc->dev, "mmcnull_intr_sdio_newintr()\n");

	/* Our path */
	if (FUNC4(&dpath, NULL, FUNC0(sc->sim), 0, 0) != CAM_REQ_CMP) {
		FUNC1(sc->dev, "mmcnull_intr_sdio_newintr(): cannot create path\n");
		return;
	}
	FUNC3(AC_UNIT_ATTENTION, dpath, NULL);
	FUNC5(dpath);
}