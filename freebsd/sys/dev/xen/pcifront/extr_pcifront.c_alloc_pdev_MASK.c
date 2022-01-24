#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xenbus_device {struct pcifront_device* data; int /*<<< orphan*/  nodename; } ;
struct xen_pci_sharedinfo {scalar_t__ flags; } ;
struct pcifront_device {int unit; int ref_cnt; int /*<<< orphan*/  gnt_ref; int /*<<< orphan*/  evtchn; int /*<<< orphan*/  sh_info_lock; struct xen_pci_sharedinfo* sh_info; struct xenbus_device* xdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct pcifront_device*,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INVALID_EVTCHN ; 
 int /*<<< orphan*/  INVALID_GRANT_REF ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pcifront_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcifront_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  pdev_list ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbus_device*,int,char*) ; 

__attribute__((used)) static struct pcifront_device *
FUNC7(struct xenbus_device *xdev)
{
	struct pcifront_device *pdev = NULL;
	int err, unit;

	err = FUNC5(xdev->nodename, "device/pci/%d", &unit);
	if (err != 1) {
		if (err == 0)
			err = -EINVAL;
		FUNC6(pdev->xdev, err, "Error scanning pci device instance number");
		goto out;
	}

	pdev = (struct pcifront_device *)FUNC3(sizeof(struct pcifront_device), M_DEVBUF, M_NOWAIT);
	if (pdev == NULL) {
		err = -ENOMEM;
		FUNC6(xdev, err, "Error allocating pcifront_device struct");
		goto out;
	}
	pdev->unit = unit;
	pdev->xdev = xdev;
	pdev->ref_cnt = 1;

	pdev->sh_info = (struct xen_pci_sharedinfo *)FUNC3(PAGE_SIZE, M_DEVBUF, M_NOWAIT);
	if (pdev->sh_info == NULL) {
		FUNC2(pdev, M_DEVBUF);
		pdev = NULL;
		err = -ENOMEM;
		FUNC6(xdev, err, "Error allocating sh_info struct");
		goto out;
	}
	pdev->sh_info->flags = 0;

	xdev->data = pdev;

	FUNC4(&pdev->sh_info_lock, "info_lock", "pci shared dev info lock", MTX_DEF);

	pdev->evtchn = INVALID_EVTCHN;
	pdev->gnt_ref = INVALID_GRANT_REF;

	FUNC1(&pdev_list, pdev, next);

	FUNC0("Allocated pdev @ 0x%p (unit=%d)\n", pdev, unit);

 out:
	return pdev;
}