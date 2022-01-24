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
struct resource {int dummy; } ;
struct pci_devinfo {int /*<<< orphan*/  cfg; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int SYS_RES_MEMORY ; 
 int FUNC1 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 struct pci_devinfo* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 

int
FUNC7(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	struct pci_devinfo *dinfo;
	int error;

	error = FUNC1(dev, child, type, rid, r);
	if (error)
		return (error);

	/* Disable decoding for device ROMs. */
	if (FUNC3(child) == dev) {
		dinfo = FUNC2(child);
		if (type == SYS_RES_MEMORY && FUNC0(&dinfo->cfg, rid))
			FUNC5(child, FUNC4(child, rid),
			    FUNC6(r));
	}
	return (0);
}