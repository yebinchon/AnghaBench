#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct vmxnet3_txq_shared {scalar_t__ stopped; int /*<<< orphan*/  error; } ;
struct vmxnet3_softc {TYPE_3__* vmx_rxq; TYPE_2__* vmx_txq; TYPE_1__* vmx_ds; int /*<<< orphan*/  vmx_dev; } ;
struct vmxnet3_rxq_shared {scalar_t__ stopped; int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {struct vmxnet3_rxq_shared* vxrxq_rs; } ;
struct TYPE_5__ {struct vmxnet3_txq_shared* vxtxq_ts; } ;
struct TYPE_4__ {int event; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_BAR1_EVENT ; 
 int /*<<< orphan*/  VMXNET3_CMD_GET_STATUS ; 
 int VMXNET3_EVENT_DEBUG ; 
 int VMXNET3_EVENT_DIC ; 
 int VMXNET3_EVENT_LINK ; 
 int VMXNET3_EVENT_RQERROR ; 
 int VMXNET3_EVENT_TQERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmxnet3_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct vmxnet3_softc *sc)
{
	device_t dev;
	struct vmxnet3_txq_shared *ts;
	struct vmxnet3_rxq_shared *rs;
	uint32_t event;

	dev = sc->vmx_dev;

	/* Clear events. */
	event = sc->vmx_ds->event;
	FUNC3(sc, VMXNET3_BAR1_EVENT, event);

	if (event & VMXNET3_EVENT_LINK)
		FUNC1(sc);

	if (event & (VMXNET3_EVENT_TQERROR | VMXNET3_EVENT_RQERROR)) {
		FUNC2(sc, VMXNET3_CMD_GET_STATUS);
		ts = sc->vmx_txq[0].vxtxq_ts;
		if (ts->stopped != 0)
			FUNC0(dev, "Tx queue error %#x\n", ts->error);
		rs = sc->vmx_rxq[0].vxrxq_rs;
		if (rs->stopped != 0)
			FUNC0(dev, "Rx queue error %#x\n", rs->error);

		/* XXX - rely on liflib watchdog to reset us? */
		FUNC0(dev, "Rx/Tx queue error event ... "
		    "waiting for iflib watchdog reset\n");
	}

	if (event & VMXNET3_EVENT_DIC)
		FUNC0(dev, "device implementation change event\n");
	if (event & VMXNET3_EVENT_DEBUG)
		FUNC0(dev, "debug event\n");
}