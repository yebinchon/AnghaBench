#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  scalar_t__ u_int32_t ;
struct mrsas_softc {int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  data_tag; } ;
struct mrsas_mpt_cmd {scalar_t__ error_code; int /*<<< orphan*/  length; int /*<<< orphan*/ * data; int /*<<< orphan*/  data_dmamap; TYPE_2__* ccb_ptr; } ;
struct cam_sim {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mrsas_mpt_cmd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ ,struct mrsas_mpt_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  mrsas_data_load_cb ; 
 int /*<<< orphan*/  FUNC3 (struct mrsas_mpt_cmd*,struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cam_sim* FUNC6 (int /*<<< orphan*/ ) ; 

int 
FUNC7(struct mrsas_softc *sc,
    struct mrsas_mpt_cmd *cmd, union ccb *ccb)
{
	u_int32_t retcode = 0;
	struct cam_sim *sim;

	sim = FUNC6(cmd->ccb_ptr->ccb_h.path);

	if (cmd->data != NULL) {
		/* Map data buffer into bus space */
		FUNC4(&sc->io_lock);
#if (__FreeBSD_version >= 902001)
		retcode = bus_dmamap_load_ccb(sc->data_tag, cmd->data_dmamap, ccb,
		    mrsas_data_load_cb, cmd, 0);
#else
		retcode = FUNC0(sc->data_tag, cmd->data_dmamap, cmd->data,
		    cmd->length, mrsas_data_load_cb, cmd, BUS_DMA_NOWAIT);
#endif
		FUNC5(&sc->io_lock);
		if (retcode)
			FUNC2(sc->mrsas_dev, "bus_dmamap_load(): retcode = %d\n", retcode);
		if (retcode == EINPROGRESS) {
			FUNC2(sc->mrsas_dev, "request load in progress\n");
			FUNC3(cmd, sim);
		}
	}
	if (cmd->error_code)
		return (1);
	return (retcode);
}