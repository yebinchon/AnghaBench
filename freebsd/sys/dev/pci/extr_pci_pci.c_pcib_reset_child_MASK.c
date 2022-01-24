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
struct TYPE_3__ {scalar_t__ pcie_location; scalar_t__ pcie_type; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ PCIEM_TYPE_DOWNSTREAM_PORT ; 
 scalar_t__ PCIEM_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct pci_devinfo* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child, int flags)
{
	struct pci_devinfo *pdinfo;
	int error;

	error = 0;
	if (dev == NULL || FUNC5(child) != dev)
		goto out;
	error = ENXIO;
	if (FUNC3(child) != FUNC2("pci"))
		goto out;
	pdinfo = FUNC4(dev);
	if (pdinfo->cfg.pcie.pcie_location != 0 &&
	    (pdinfo->cfg.pcie.pcie_type == PCIEM_TYPE_DOWNSTREAM_PORT ||
	    pdinfo->cfg.pcie.pcie_type == PCIEM_TYPE_ROOT_PORT)) {
		error = FUNC1(child, flags);
		if (error == 0) {
			error = FUNC6(dev,
			    pdinfo->cfg.pcie.pcie_location);
			/* XXXKIB call _post even if error != 0 ? */
			FUNC0(child, flags);
		}
	}
out:
	return (error);
}