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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUS_PROBE_GENERIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	uint32_t family;
	char buf[64];

	if (FUNC4("amdsmn", 0))
		return (ENXIO);
	if (!FUNC1(FUNC2(dev), NULL))
		return (ENXIO);

	family = FUNC0(cpu_id);

	switch (family) {
	case 0x15:
	case 0x17:
		break;
	default:
		return (ENXIO);
	}
	FUNC5(buf, sizeof(buf), "AMD Family %xh System Management Network",
	    family);
	FUNC3(dev, buf);

	return (BUS_PROBE_GENERIC);
}