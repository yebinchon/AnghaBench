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
struct mmc_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_mtx; } ;
struct mmc_request {int flags; TYPE_2__* cmd; struct mmc_softc* done_data; int /*<<< orphan*/  done; } ;
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/  opcode; TYPE_1__* data; int /*<<< orphan*/  flags; int /*<<< orphan*/  arg; } ;
struct TYPE_3__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  MMC_ERR_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_softc*) ; 
 int MMC_REQ_DONE ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_softc*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int mmc_debug ; 
 int /*<<< orphan*/  mmc_wakeup ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8(struct mmc_softc *sc, struct mmc_request *req)
{

	req->done = mmc_wakeup;
	req->done_data = sc;
	if (FUNC3(mmc_debug > 1)) {
		FUNC5(sc->dev, "REQUEST: CMD%d arg %#x flags %#x",
		    req->cmd->opcode, req->cmd->arg, req->cmd->flags);
		if (req->cmd->data) {
			FUNC7(" data %d\n", (int)req->cmd->data->len);
		} else
			FUNC7("\n");
	}
	FUNC0(FUNC4(sc->dev), sc->dev, req);
	FUNC1(sc);
	while ((req->flags & MMC_REQ_DONE) == 0)
		FUNC6(req, &sc->sc_mtx, 0, "mmcreq", 0);
	FUNC2(sc);
	if (FUNC3(mmc_debug > 2 || (mmc_debug > 0 &&
	    req->cmd->error != MMC_ERR_NONE)))
		FUNC5(sc->dev, "CMD%d RESULT: %d\n",
		    req->cmd->opcode, req->cmd->error);
	return (0);
}