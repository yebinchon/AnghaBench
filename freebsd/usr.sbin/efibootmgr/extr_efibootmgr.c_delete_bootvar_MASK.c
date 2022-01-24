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

/* Variables and functions */
 int /*<<< orphan*/  EFI_GLOBAL_GUID ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void
FUNC9(int bootnum)
{
	char *name;
	int defer = 0;

	/*
	 * Try to delete the boot variable and remocve it
	 * from the boot order. We always do both actions
	 * to make it easy to clean up from oopses.
	 */
	if (bootnum < 0 || bootnum > 0xffff)
		FUNC3(1, "Bad boot variable %#x", bootnum);
	FUNC0(&name, "%s%04X", "Boot", bootnum);
	if (name == NULL)
		FUNC2(1, "asprintf");
	FUNC6("Removing boot variable '%s'\n", name);
	if (FUNC1(EFI_GLOBAL_GUID, name) < 0) {
		defer = 1;
		FUNC8("cannot delete variable %s", name);
	}
	FUNC6("Removing 0x%x from BootOrder\n", bootnum);
	FUNC7(bootnum);
	FUNC5(name);
	if (defer)
		FUNC4(defer);
}