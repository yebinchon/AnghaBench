#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ drm_pci_id_list_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 scalar_t__ PCIC_DISPLAY ; 
 scalar_t__ PCIS_DISPLAY_OTHER ; 
 scalar_t__ PCIS_DISPLAY_VGA ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int,int,TYPE_1__ const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(device_t kdev, const drm_pci_id_list_t *idlist)
{
	const drm_pci_id_list_t *id_entry;
	int vendor, device;

	vendor = FUNC9(kdev);
	device = FUNC7(kdev);

	if (FUNC6(kdev) != PCIC_DISPLAY ||
	    (FUNC8(kdev) != PCIS_DISPLAY_VGA &&
	     FUNC8(kdev) != PCIS_DISPLAY_OTHER))
		return (-ENXIO);

	id_entry = FUNC5(vendor, device, idlist);
	if (id_entry != NULL) {
		if (FUNC2(kdev) == NULL) {
			FUNC0("%s desc: %s\n",
			    FUNC3(kdev), id_entry->name);
			FUNC4(kdev, id_entry->name);
		}
		FUNC1(kdev);
		return (-BUS_PROBE_GENERIC);
	}

	return (-ENXIO);
}