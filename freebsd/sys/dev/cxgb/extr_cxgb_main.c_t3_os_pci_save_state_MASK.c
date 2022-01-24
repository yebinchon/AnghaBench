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
struct adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pci_devinfo*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct adapter *sc)
{
	device_t dev;
	struct pci_devinfo *dinfo;

	dev = sc->dev;
	dinfo = FUNC0(dev);

	FUNC1(dev, dinfo, 0);
	return (0);
}