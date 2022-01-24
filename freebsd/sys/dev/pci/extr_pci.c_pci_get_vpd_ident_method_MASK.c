#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ vpd_reg; char* vpd_ident; int /*<<< orphan*/  vpd_cached; } ;
struct TYPE_5__ {TYPE_1__ vpd; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef  TYPE_2__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

int
FUNC3(device_t dev, device_t child, const char **identptr)
{
	struct pci_devinfo *dinfo = FUNC0(child);
	pcicfgregs *cfg = &dinfo->cfg;

	if (!cfg->vpd.vpd_cached && cfg->vpd.vpd_reg != 0)
		FUNC2(FUNC1(dev), cfg);

	*identptr = cfg->vpd.vpd_ident;

	if (*identptr == NULL)
		return (ENXIO);

	return (0);
}