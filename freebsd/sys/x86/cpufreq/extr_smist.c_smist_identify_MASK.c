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
struct piix4_pci_device {char* desc; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 scalar_t__ bootverbose ; 
 int cpu_id ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct piix4_pci_device* piix4_pci_devices ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(driver_t *driver, device_t parent)
{
	struct piix4_pci_device *id;
	device_t piix4 = NULL;

	if (FUNC5("ichst", 0))
		return;

	/* Check for a supported processor */
	if (cpu_vendor_id != CPU_VENDOR_INTEL)
		return;
	switch (cpu_id & 0xff0) {
	case 0x680:	/* Pentium III [coppermine] */
	case 0x6a0:	/* Pentium III [Tualatin] */
		break;
	default:
		return;
	}

	/* Check for a supported PCI-ISA bridge */
	for (id = piix4_pci_devices; id->desc != NULL; ++id) {
		if ((piix4 = FUNC3(id->vendor, id->device)) != NULL)
			break;
	}
	if (!piix4)
		return;

	if (bootverbose)
		FUNC4("smist: found supported isa bridge %s\n", id->desc);

	if (FUNC1(parent, "smist", -1) != NULL)
		return;
	if (FUNC0(parent, 30, "smist", -1) == NULL)
		FUNC2(parent, "smist: add child failed\n");
}