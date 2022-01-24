#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mxge_slice_state {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_7__ {int num_slices; int down_cnt; int intr_coal_delay; int /*<<< orphan*/  dev; TYPE_1__* ifp; struct mxge_slice_state* ss; } ;
typedef  TYPE_2__ mxge_softc_t ;
typedef  int /*<<< orphan*/  mxge_cmd_t ;
struct TYPE_6__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MXGEFW_CMD_ETHERNET_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(mxge_softc_t *sc, int down)
{
	mxge_cmd_t cmd;
	int err, old_down_cnt;
#ifdef IFNET_BUF_RING
	struct mxge_slice_state *ss;	
	int slice;
#endif

#ifdef IFNET_BUF_RING
	for (slice = 0; slice < sc->num_slices; slice++) {
		ss = &sc->ss[slice];
		ss->if_drv_flags &= ~IFF_DRV_RUNNING;
	}
#endif
	sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	if (!down) {
		old_down_cnt = sc->down_cnt;
		FUNC4();
		err = FUNC3(sc, MXGEFW_CMD_ETHERNET_DOWN, &cmd);
		if (err) {
			FUNC1(sc->dev,
				      "Couldn't bring down link\n");
		}
		if (old_down_cnt == sc->down_cnt) {
			/* wait for down irq */
			FUNC0(10 * sc->intr_coal_delay);
		}
		FUNC4();
		if (old_down_cnt == sc->down_cnt) {
			FUNC1(sc->dev, "never got down irq\n");
		}
	}
	FUNC2(sc);

	return 0;
}