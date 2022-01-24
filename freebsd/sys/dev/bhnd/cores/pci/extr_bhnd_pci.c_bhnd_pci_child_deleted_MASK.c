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
struct bhnd_pci_devinfo {int /*<<< orphan*/  resources; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 struct bhnd_pci_devinfo* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_pci_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(device_t dev, device_t child)
{
	struct bhnd_pci_devinfo *dinfo;

	if (FUNC1(child) != dev)
		return;

	dinfo = FUNC0(child);
	if (dinfo != NULL) {
		FUNC4(&dinfo->resources);
		FUNC3(dinfo, M_DEVBUF);
	}

	FUNC2(child, NULL);
}