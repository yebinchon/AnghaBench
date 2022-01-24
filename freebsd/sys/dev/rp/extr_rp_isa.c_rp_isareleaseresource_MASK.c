#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t MBaseIO; } ;
struct TYPE_7__ {int /*<<< orphan*/ ** bus_ctlp; int /*<<< orphan*/ ** io_rid; int /*<<< orphan*/ ** io; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ CONTROLLER_t ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int MAX_AIOPS_PER_BOARD ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_1__* rp_controller ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(CONTROLLER_t *ctlp)
{
	int i;

	FUNC3(ctlp);

	if (ctlp == rp_controller)
		rp_controller = NULL;
	if (ctlp->io != NULL) {
		for (i = 0 ; i < MAX_AIOPS_PER_BOARD ; i++)
			if (ctlp->io[i] != NULL)
				FUNC1(ctlp->dev, SYS_RES_IOPORT, ctlp->io_rid[i], ctlp->io[i]);
		FUNC2(ctlp->io, M_DEVBUF);
	}
	if (ctlp->io_rid != NULL)
		FUNC2(ctlp->io_rid, M_DEVBUF);
	if (rp_controller != NULL && rp_controller->io[FUNC0(ctlp)->MBaseIO] != NULL) {
		FUNC1(rp_controller->dev, SYS_RES_IOPORT, rp_controller->io_rid[FUNC0(ctlp)->MBaseIO], rp_controller->io[FUNC0(ctlp)->MBaseIO]);
		rp_controller->io[FUNC0(ctlp)->MBaseIO] = NULL;
		rp_controller->io_rid[FUNC0(ctlp)->MBaseIO] = 0;
	}
	if (ctlp->bus_ctlp != NULL)
		FUNC2(ctlp->bus_ctlp, M_DEVBUF);
}