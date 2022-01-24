#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  bus_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  bus_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; scalar_t__ sram; TYPE_2__ zeropad_dma; TYPE_1__ cmd_dma; scalar_t__ cmd; } ;
typedef  TYPE_3__ mxge_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MXGEFW_BOOT_DUMMY_RDMA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int volatile*,int volatile) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char volatile*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(mxge_softc_t *sc, int enable)
{
	char buf_bytes[72];
	volatile uint32_t *confirm;
	volatile char *submit;
	uint32_t *buf, dma_low, dma_high;
	int i;

	buf = (uint32_t *)((unsigned long)(buf_bytes + 7) & ~7UL);

	/* clear confirmation addr */
	confirm = (volatile uint32_t *)sc->cmd;
	*confirm = 0;
	FUNC6();

	/* send an rdma command to the PCIe engine, and wait for the
	   response in the confirmation address.  The firmware should
	   write a -1 there to indicate it is alive and well
	*/

	dma_low = FUNC2(sc->cmd_dma.bus_addr);
	dma_high = FUNC1(sc->cmd_dma.bus_addr);
	buf[0] = FUNC4(dma_high);		/* confirm addr MSW */
	buf[1] = FUNC4(dma_low);		/* confirm addr LSW */
	buf[2] = FUNC4(0xffffffff);		/* confirm data */
	dma_low = FUNC2(sc->zeropad_dma.bus_addr);
	dma_high = FUNC1(sc->zeropad_dma.bus_addr);
	buf[3] = FUNC4(dma_high); 		/* dummy addr MSW */
	buf[4] = FUNC4(dma_low); 		/* dummy addr LSW */
	buf[5] = FUNC4(enable);			/* enable? */


	submit = (volatile char *)(sc->sram + MXGEFW_BOOT_DUMMY_RDMA);

	FUNC5(submit, buf, 64);
	FUNC6();
	FUNC0(1000);
	FUNC6();
	i = 0;
	while (*confirm != 0xffffffff && i < 20) {
		FUNC0(1000);
		i++;
	}
	if (*confirm != 0xffffffff) {
		FUNC3(sc->dev, "dummy rdma %s failed (%p = 0x%x)",
			      (enable ? "enable" : "disable"), confirm,
			      *confirm);
	}
	return;
}