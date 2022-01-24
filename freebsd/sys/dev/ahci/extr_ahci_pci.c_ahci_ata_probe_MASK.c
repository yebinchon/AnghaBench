#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; char* name; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 TYPE_1__* ahci_ids ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	char buf[64];
	int i;
	uint32_t devid = FUNC2(dev);
	uint8_t revid = FUNC3(dev);

	if ((intptr_t)FUNC0(dev) >= 0)
		return (ENXIO);
	/* Is this a known AHCI chip? */
	for (i = 0; ahci_ids[i].id != 0; i++) {
		if (ahci_ids[i].id == devid &&
		    ahci_ids[i].rev <= revid) {
			FUNC4(buf, sizeof(buf), "%s AHCI SATA controller",
			    ahci_ids[i].name);
			FUNC1(dev, buf);
			return (BUS_PROBE_DEFAULT);
		}
	}
	FUNC1(dev, "AHCI SATA controller");
	return (BUS_PROBE_DEFAULT);
}