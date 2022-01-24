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
 int PCIM_BIOS_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (scalar_t__,scalar_t__,int) ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 int FUNC2 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 struct pci_devinfo* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct resource*) ; 

int
FUNC8(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct pci_devinfo *dinfo;
	int error;

	error = FUNC2(dev, child, type, rid, r);
	if (error)
		return (error);

	/* Enable decoding in the command register when activating BARs. */
	if (FUNC4(child) == dev) {
		/* Device ROMs need their decoding explicitly enabled. */
		dinfo = FUNC3(child);
		if (type == SYS_RES_MEMORY && FUNC0(&dinfo->cfg, rid))
			FUNC6(child, FUNC5(child, rid),
			    FUNC7(r) | PCIM_BIOS_ENABLE);
		switch (type) {
		case SYS_RES_IOPORT:
		case SYS_RES_MEMORY:
			error = FUNC1(dev, child, type);
			break;
		}
	}
	return (error);
}