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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int cclk; } ;
struct TYPE_6__ {int /*<<< orphan*/  vpd_cap_addr; } ;
struct TYPE_4__ {int rev; int cim_la_size; int fpga; int nports; int portvec; TYPE_2__ vpd; int /*<<< orphan*/  b_wnd; int /*<<< orphan*/  a_wnd; TYPE_3__ pci; int /*<<< orphan*/  chipid; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/ * chip_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_REV ; 
 int /*<<< orphan*/  CHELSIO_T4 ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 int CIMLA_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_CAP_ID_VPD ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,TYPE_3__*) ; 
 int FUNC5 (struct adapter*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ) ; 

int FUNC13(struct adapter *adapter, u32 *buf)
{
	int ret;
	uint16_t device_id;
	uint32_t pl_rev;

	FUNC4(adapter, &adapter->params.pci);

	pl_rev = FUNC12(adapter, A_PL_REV);
	adapter->params.chipid = FUNC1(pl_rev);
	adapter->params.rev = FUNC2(pl_rev);
	if (adapter->params.chipid == 0) {
		/* T4 did not have chipid in PL_REV (T5 onwards do) */
		adapter->params.chipid = CHELSIO_T4;

		/* T4A1 chip is not supported */
		if (adapter->params.rev == 1) {
			FUNC0(adapter, "T4 rev 1 chip is not supported.\n");
			return -EINVAL;
		}
	}

	adapter->chip_params = FUNC8(FUNC3(adapter));
	if (adapter->chip_params == NULL)
		return -EINVAL;

	adapter->params.pci.vpd_cap_addr =
	    FUNC10(adapter, PCI_CAP_ID_VPD);

	ret = FUNC9(adapter);
	if (ret < 0)
		return ret;

	/* Cards with real ASICs have the chipid in the PCIe device id */
	FUNC11(adapter, PCI_DEVICE_ID, &device_id);
	if (device_id >> 12 == FUNC3(adapter))
		adapter->params.cim_la_size = CIMLA_SIZE;
	else {
		/* FPGA */
		adapter->params.fpga = 1;
		adapter->params.cim_la_size = 2 * CIMLA_SIZE;
	}

	ret = FUNC5(adapter, &adapter->params.vpd, device_id, buf);
	if (ret < 0)
		return ret;

	FUNC6(adapter->params.a_wnd, adapter->params.b_wnd);

	/*
	 * Default port and clock for debugging in case we can't reach FW.
	 */
	adapter->params.nports = 1;
	adapter->params.portvec = 1;
	adapter->params.vpd.cclk = 50000;

	/* Set pci completion timeout value to 4 seconds. */
	FUNC7(adapter, 0xd);
	return 0;
}