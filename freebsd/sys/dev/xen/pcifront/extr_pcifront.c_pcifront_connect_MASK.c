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
struct pcifront_device {int /*<<< orphan*/  ndev; TYPE_1__* xdev; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  devclass_t ;
struct TYPE_2__ {char* nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  XenbusStateConnected ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct pcifront_device *pdev)
{
	device_t nexus;
	devclass_t nexus_devclass;

	/* We will add our device as a child of the nexus0 device */
	if (!(nexus_devclass = FUNC2("nexus")) ||
		!(nexus = FUNC3(nexus_devclass, 0))) {
		FUNC1("could not find nexus0!\n");
		return -1;
	}

	/* Create a newbus device representing this frontend instance */
	pdev->ndev = FUNC0(nexus, 0, "xpcife", pdev->unit);
	if (!pdev->ndev) {
		FUNC1("could not create xpcife%d!\n", pdev->unit);
		return -EFAULT;
	}
	FUNC6(pdev);
	FUNC5(pdev->ndev, pdev);

	/* Good to go connected now */
	FUNC10(pdev->xdev, NULL, XenbusStateConnected);

	FUNC9("pcifront: connected to %s\n", pdev->xdev->nodename);

	FUNC7(&Giant);
	FUNC4(pdev->ndev);
	FUNC8(&Giant);

	return 0;
}