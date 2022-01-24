#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcicfg_vpd {scalar_t__ vpd_reg; int /*<<< orphan*/  vpd_cached; } ;
struct TYPE_3__ {struct pcicfg_vpd vpd; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  TYPE_1__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

struct pcicfg_vpd *
FUNC3(device_t dev)
{
	struct pci_devinfo *dinfo = FUNC0(dev);
	pcicfgregs *cfg = &dinfo->cfg;

	if (!cfg->vpd.vpd_cached && cfg->vpd.vpd_reg != 0)
		FUNC2(FUNC1(FUNC1(dev)), cfg);
	return (&cfg->vpd);
}