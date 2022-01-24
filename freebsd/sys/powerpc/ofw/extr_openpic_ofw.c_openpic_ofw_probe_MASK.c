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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  OPENPIC_DEVSTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const char *type = FUNC2(dev);

	if (type == NULL)
                return (ENXIO);

	if (!FUNC3(dev, "chrp,open-pic") &&
	    FUNC4(type, "open-pic") != 0)
                return (ENXIO);

	/*
	 * On some U4 systems, there is a phantom MPIC in the mac-io cell.
	 * The uninorth driver will pick up the real PIC, so ignore it here.
	 */
	if (FUNC0("/u4") != (phandle_t)-1)
		return (ENXIO);

	FUNC1(dev, OPENPIC_DEVSTR);
	return (0);
}