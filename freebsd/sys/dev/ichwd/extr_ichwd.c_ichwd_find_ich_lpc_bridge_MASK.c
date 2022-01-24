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
typedef  scalar_t__ uint16_t ;
struct ichwd_device {scalar_t__ device; int /*<<< orphan*/ * desc; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ VENDORID_INTEL ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 struct ichwd_device* ichwd_devices ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC5(device_t isa, struct ichwd_device **id_p)
{
	struct ichwd_device *id;
	device_t isab, pci;
	uint16_t devid;

	/* Check whether parent ISA bridge looks familiar. */
	isab = FUNC2(isa);
	pci = FUNC2(isab);
	if (pci == NULL || FUNC1(pci) != FUNC0("pci"))
		return (NULL);
	if (FUNC4(isab) != VENDORID_INTEL)
		return (NULL);
	devid = FUNC3(isab);
	for (id = ichwd_devices; id->desc != NULL; ++id) {
		if (devid == id->device) {
			if (id_p != NULL)
				*id_p = id;
			return (isab);
		}
	}

	return (NULL);
}