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
struct pcifront_device {TYPE_1__* xdev; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {unsigned int otherend_id; int /*<<< orphan*/  otherend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int
FUNC8(device_t dev) 
{
	struct pcifront_device *pdev = (struct pcifront_device *)FUNC3(dev);
	int i, num_roots, len, err;
	char str[64];
	unsigned int domain, bus;

	FUNC0("xpcife attach (unit=%d)\n", pdev->unit);

	err = FUNC7(NULL, pdev->xdev->otherend,
					   "root_num", "%d", &num_roots);
	if (err != 1) {
		if (err == 0)
			err = -EINVAL;
		FUNC6(pdev->xdev, err,
						 "Error reading number of PCI roots");
		goto out;
	}

	/* Add a pcib device for each root */
	for (i = 0; i < num_roots; i++) {
		device_t child;

		len = FUNC4(str, sizeof(str), "root-%d", i);
		if (FUNC5(len >= (sizeof(str) - 1))) {
			err = -ENOMEM;
			goto out;
		}

		err = FUNC7(NULL, pdev->xdev->otherend, str,
						   "%x:%x", &domain, &bus);
		if (err != 2) {
			if (err >= 0)
				err = -EINVAL;
			FUNC6(pdev->xdev, err,
							 "Error reading PCI root %d", i);
			goto out;
		}
		err = 0;
		if (domain != pdev->xdev->otherend_id) {
			err = -EINVAL;
			FUNC6(pdev->xdev, err,
							 "Domain mismatch %d != %d", domain, pdev->xdev->otherend_id);
			goto out;
		}
		
		child = FUNC2(dev, "pcib", bus);
		if (!child) {
			err = -ENOMEM;
			FUNC6(pdev->xdev, err,
							 "Unable to create pcib%d", bus);
			goto out;
		}
	}

 out:
	return FUNC1(dev);
}