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
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const char *name;
	phandle_t node;
	int type;

	name = FUNC2(dev);
	node = FUNC3(dev);
	if (FUNC4(name, "SUNW,ffb") == 0) {
		if (FUNC0(node, "board_type", &type, sizeof(type)) == -1)
			return (ENXIO);
		switch (type & 7) {
		case 0x0:
			FUNC1(dev, "Creator");
			break;
		case 0x3:
			FUNC1(dev, "Creator3D");
			break;
		default:
			return (ENXIO);
		}
	} else if (FUNC4(name, "SUNW,afb") == 0)
		FUNC1(dev, "Elite3D");
	else
		return (ENXIO);
	return (BUS_PROBE_DEFAULT);
}