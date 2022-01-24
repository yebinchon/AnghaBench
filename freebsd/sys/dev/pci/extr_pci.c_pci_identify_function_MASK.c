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
struct pci_devinfo {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 struct pci_devinfo* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static struct pci_devinfo *
FUNC2(device_t pcib, device_t dev, int domain, int busno,
    int slot, int func)
{
	struct pci_devinfo *dinfo;

	dinfo = FUNC1(pcib, dev, domain, busno, slot, func);
	if (dinfo != NULL)
		FUNC0(dev, dinfo);

	return (dinfo);
}