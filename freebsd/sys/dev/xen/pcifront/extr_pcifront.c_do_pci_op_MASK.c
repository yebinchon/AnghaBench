#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct xen_pci_op {int err; } ;
struct pcifront_device {int /*<<< orphan*/  sh_info_lock; TYPE_1__* sh_info; int /*<<< orphan*/  evtchn; } ;
typedef  int /*<<< orphan*/  evtchn_port_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; struct xen_pci_op op; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int XEN_PCI_ERR_dev_not_found ; 
 int /*<<< orphan*/  _XEN_PCIF_active ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (struct xen_pci_op*,struct xen_pci_op*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ time_uptime ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int
FUNC12(struct pcifront_device *pdev, struct xen_pci_op *op)
{
	int err = 0;
	struct xen_pci_op *active_op = &pdev->sh_info->op;
	evtchn_port_t port = pdev->evtchn;
	time_t timeout;

	FUNC5(&pdev->sh_info_lock);

	FUNC4(active_op, op, sizeof(struct xen_pci_op));

	/* Go */
	FUNC11();
	FUNC9(_XEN_PCIF_active, (unsigned long *)&pdev->sh_info->flags);
	FUNC7(port);

	timeout = time_uptime + 2;

	FUNC3(port);

	/* Spin while waiting for the answer */
	while (FUNC10
	       (_XEN_PCIF_active, (unsigned long *)&pdev->sh_info->flags)) {
		int err = FUNC0(&port, 1, 3 * hz);
		if (err)
			FUNC8("Failed HYPERVISOR_poll: err=%d", err);
		FUNC3(port);
		if (time_uptime > timeout) {
			FUNC1("pciback not responding!!!\n");
			FUNC2(_XEN_PCIF_active,
				  (unsigned long *)&pdev->sh_info->flags);
			err = XEN_PCI_ERR_dev_not_found;
			goto out;
		}
	}

	FUNC4(op, active_op, sizeof(struct xen_pci_op));

	err = op->err;
 out:
	FUNC6(&pdev->sh_info_lock);
	return err;
}