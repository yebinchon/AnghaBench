#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_9__ {int io_num; int /*<<< orphan*/ ** io; void** io_rid; int /*<<< orphan*/ * bus_ctlp; int /*<<< orphan*/  ctlmask; int /*<<< orphan*/  aiop2off; int /*<<< orphan*/  aiop2rid; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ CONTROLLER_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FREQ_DIS ; 
 int /*<<< orphan*/  MAX_AIOPS_PER_BOARD ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
#define  RP_DEVICE_ID_UPCI_16 130 
#define  RP_DEVICE_ID_UPCI_32 129 
#define  RP_DEVICE_ID_UPCI_8O 128 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  rp_pci_aiop2off ; 
 int /*<<< orphan*/  rp_pci_aiop2rid ; 
 int /*<<< orphan*/  rp_pci_ctlmask ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	int	num_ports, num_aiops;
	int	aiop;
	CONTROLLER_t	*ctlp;
	int	unit;
	int	retval;

	ctlp = FUNC3(dev);
	FUNC2(ctlp, sizeof(*ctlp));
	ctlp->dev = dev;
	unit = FUNC4(dev);
	ctlp->aiop2rid = rp_pci_aiop2rid;
	ctlp->aiop2off = rp_pci_aiop2off;
	ctlp->ctlmask = rp_pci_ctlmask;

	/* The IO ports of AIOPs for a PCI controller are continuous. */
	ctlp->io_num = 1;
	ctlp->io_rid = FUNC6(sizeof(*(ctlp->io_rid)) * ctlp->io_num, M_DEVBUF, M_NOWAIT | M_ZERO);
	ctlp->io = FUNC6(sizeof(*(ctlp->io)) * ctlp->io_num, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (ctlp->io_rid == NULL || ctlp->io == NULL) {
		FUNC5(dev, "rp_pciattach: Out of memory.\n");
		retval = ENOMEM;
		goto nogo;
	}

	ctlp->bus_ctlp = NULL;

	switch (FUNC7(dev)) {
	case RP_DEVICE_ID_UPCI_16:
	case RP_DEVICE_ID_UPCI_32:
	case RP_DEVICE_ID_UPCI_8O:
		ctlp->io_rid[0] = FUNC0(2);
		break;
	default:
		ctlp->io_rid[0] = FUNC0(0);
		break;
	}
	ctlp->io[0] = FUNC1(dev, SYS_RES_IOPORT,
		&ctlp->io_rid[0], RF_ACTIVE);
	if(ctlp->io[0] == NULL) {
		FUNC5(dev, "ioaddr mapping failed for RocketPort(PCI).\n");
		retval = ENXIO;
		goto nogo;
	}

	num_aiops = FUNC11(ctlp,
				       MAX_AIOPS_PER_BOARD, 0,
				       FREQ_DIS, 0, FUNC7(dev));

	num_ports = 0;
	for(aiop=0; aiop < num_aiops; aiop++) {
		FUNC12(ctlp, aiop);
		num_ports += FUNC10(ctlp, aiop);
	}

	retval = FUNC8(ctlp, num_aiops, num_ports);
	if (retval != 0)
		goto nogo;

	return (0);

nogo:
	FUNC9(ctlp);

	return (retval);
}