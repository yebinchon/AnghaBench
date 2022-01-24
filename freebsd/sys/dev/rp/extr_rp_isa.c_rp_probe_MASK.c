#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {int io_num; int /*<<< orphan*/ ** io; scalar_t__* io_rid; int /*<<< orphan*/ * bus_ctlp; int /*<<< orphan*/  ctlmask; int /*<<< orphan*/  aiop2off; int /*<<< orphan*/  aiop2rid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ISACONTROLLER_t ;
typedef  TYPE_1__ CONTROLLER_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FREQ_DIS ; 
 int MAX_AIOPS_PER_BOARD ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* rp_controller ; 
 int /*<<< orphan*/  rp_isa_aiop2off ; 
 int /*<<< orphan*/  rp_isa_aiop2rid ; 
 int /*<<< orphan*/  rp_isa_ctlmask ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  rp_nisadevs ; 
 int FUNC10 (TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	int unit;
	CONTROLLER_t *controller;
	int num_aiops;
	CONTROLLER_t *ctlp;
	int retval;

	/*
	 * We have no PnP RocketPort cards.
	 * (At least according to LINT)
	 */
	if (FUNC7(dev) != 0)
		return (ENXIO);

	/* We need IO port resource to configure an ISA device. */
	if (FUNC1(dev, SYS_RES_IOPORT, 0) == 0)
		return (ENXIO);

	unit = FUNC4(dev);
	if (unit >= 4) {
		FUNC5(dev, "rpprobe: unit number %d invalid.\n", unit);
		return (ENXIO);
	}
	FUNC5(dev, "probing for RocketPort(ISA) unit %d.\n", unit);

	ctlp = FUNC3(dev);
	FUNC2(ctlp, sizeof(*ctlp));
	ctlp->dev = dev;
	ctlp->aiop2rid = rp_isa_aiop2rid;
	ctlp->aiop2off = rp_isa_aiop2off;
	ctlp->ctlmask = rp_isa_ctlmask;

	/* The IO ports of AIOPs for an ISA controller are discrete. */
	ctlp->io_num = 1;
	ctlp->io_rid = FUNC8(sizeof(*(ctlp->io_rid)) * MAX_AIOPS_PER_BOARD, M_DEVBUF, M_NOWAIT | M_ZERO);
	ctlp->io = FUNC8(sizeof(*(ctlp->io)) * MAX_AIOPS_PER_BOARD, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (ctlp->io_rid == NULL || ctlp->io == NULL) {
		FUNC5(dev, "rp_attach: Out of memory.\n");
		retval = ENOMEM;
		goto nogo;
	}

	ctlp->bus_ctlp = FUNC8(sizeof(ISACONTROLLER_t) * 1, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (ctlp->bus_ctlp == NULL) {
		FUNC5(dev, "rp_attach: Out of memory.\n");
		retval = ENOMEM;
		goto nogo;
	}

	ctlp->io_rid[0] = 0;
	if (rp_controller != NULL) {
		controller = rp_controller;
		ctlp->io[0] = FUNC0(dev, SYS_RES_IOPORT, &ctlp->io_rid[0], 0x40, RF_ACTIVE);
	} else {
		controller = rp_controller = ctlp;
		ctlp->io[0] = FUNC0(dev, SYS_RES_IOPORT, &ctlp->io_rid[0], 0x44, RF_ACTIVE);
	}
	if (ctlp->io[0] == NULL) {
		FUNC5(dev, "rp_attach: Resource not available.\n");
		retval = ENXIO;
		goto nogo;
	}

	num_aiops = FUNC10(ctlp,
				controller,
				MAX_AIOPS_PER_BOARD, 0,
				FREQ_DIS, 0);
	if (num_aiops <= 0) {
		FUNC5(dev, "board%d init failed.\n", unit);
		retval = ENXIO;
		goto nogo;
	}

	if (rp_controller == NULL)
		rp_controller = controller;
	rp_nisadevs++;

	FUNC6(dev, "RocketPort ISA");

	return (0);

nogo:
	FUNC9(ctlp);

	return (retval);
}