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
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(device_t dev, const char *dev_name)
{
	const char *vendor_name;
	char *desc;

	vendor_name = FUNC2(dev);
	FUNC0(&desc, M_BHND, "%s %s, rev %hhu", vendor_name, dev_name,
	    FUNC1(dev));

	if (desc != NULL) {
		FUNC4(dev, desc);
		FUNC5(desc, M_BHND);
	} else {
		FUNC3(dev, dev_name);
	}
}