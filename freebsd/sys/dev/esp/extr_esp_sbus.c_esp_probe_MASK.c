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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const char *name;

	name = FUNC1(dev);
	if (FUNC2("SUNW,fas", name) == 0) {
		FUNC0(dev, "Sun FAS366 Fast-Wide SCSI");
	        return (BUS_PROBE_DEFAULT);
	} else if (FUNC2("esp", name) == 0) {
		FUNC0(dev, "Sun ESP SCSI/Sun FAS Fast-SCSI");
	        return (BUS_PROBE_DEFAULT);
	}

	return (ENXIO);
}