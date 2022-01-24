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
struct TYPE_3__ {void* pci_cmd_word; } ;
struct TYPE_4__ {void* subsystem_device_id; void* subsystem_vendor_id; void* revision_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; TYPE_1__ bus; } ;
struct adapter {TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIR_REVID ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(if_ctx_t ctx)
{
	device_t dev = FUNC2(ctx);
	struct adapter *adapter = FUNC3(ctx);

	/* Make sure our PCI config space has the necessary stuff set */
	adapter->hw.bus.pci_cmd_word = FUNC6(dev, PCIR_COMMAND, 2);

	/* Save off the information about this board */
	adapter->hw.vendor_id = FUNC5(dev);
	adapter->hw.device_id = FUNC4(dev);
	adapter->hw.revision_id = FUNC6(dev, PCIR_REVID, 1);
	adapter->hw.subsystem_vendor_id =
	    FUNC6(dev, PCIR_SUBVEND_0, 2);
	adapter->hw.subsystem_device_id =
	    FUNC6(dev, PCIR_SUBDEV_0, 2);

	/* Do Shared Code Init and Setup */
	if (FUNC1(&adapter->hw)) {
		FUNC0(dev, "Setup init failure\n");
		return;
	}
}