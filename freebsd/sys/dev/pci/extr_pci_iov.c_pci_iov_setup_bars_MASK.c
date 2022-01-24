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
struct pcicfg_iov {scalar_t__ iov_pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  scalar_t__ pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIR_MAX_BAR_0 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct pci_devinfo*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_devinfo*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*,int*) ; 

__attribute__((used)) static int
FUNC8(struct pci_devinfo *dinfo)
{
	device_t dev;
	struct pcicfg_iov *iov;
	pci_addr_t bar_value, testval;
	int i, last_64, error;

	iov = dinfo->cfg.iov;
	dev = dinfo->cfg.dev;
	last_64 = 0;

	FUNC2(FUNC1(dev), dev, 1);

	for (i = 0; i <= PCIR_MAX_BAR_0; i++) {
		/* First, try to use BARs allocated with EA */
		error = FUNC5(dinfo, i);
		if (error == 0)
			continue;

		/* Allocate legacy-BAR only if EA is not enabled */
		if (FUNC3(dev, iov->iov_pos + FUNC0(i)))
			continue;

		/*
		 * If a PCI BAR is a 64-bit wide BAR, then it spans two
		 * consecutive registers.  Therefore if the last BAR that
		 * we looked at was a 64-bit BAR, we need to skip this
		 * register as it's the second half of the last BAR.
		 */
		if (!last_64) {
			FUNC7(dev,
			    iov->iov_pos + FUNC0(i),
			    &bar_value, &testval, &last_64);

			if (testval != 0) {
				error = FUNC4(dinfo, i,
				   FUNC6(testval));
				if (error != 0)
					return (error);
			}
		} else
			last_64 = 0;
	}

	return (0);
}