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
struct devinfo_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVINFO_ROOT_DEVICE ; 
 int /*<<< orphan*/  acpi0_check ; 
 int FUNC0 (struct devinfo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct devinfo_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct devinfo_dev *root;
	int found;

	found = 0;
	FUNC3();
	root = FUNC2(DEVINFO_ROOT_DEVICE);
	if (root != NULL)
		found = FUNC0(root, acpi0_check, NULL);
	FUNC1();
	return found;
}