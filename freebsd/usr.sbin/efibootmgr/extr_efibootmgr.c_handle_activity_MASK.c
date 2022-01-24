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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_GLOBAL_GUID ; 
 int /*<<< orphan*/  LOAD_OPTION_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC6(int bootnum, bool active)
{
	uint32_t attrs, load_attrs;
	uint8_t *data;
	size_t size;
	char *name;

	FUNC0(&name, "%s%04X", "Boot", bootnum);
	if (name == NULL)
		FUNC2(1, "asprintf");
	if (FUNC1(EFI_GLOBAL_GUID, name, &data, &size, &attrs) < 0)
		FUNC2(1, "No such bootvar %s\n", name);

	load_attrs = FUNC3(data);

	if (active)
		load_attrs |= LOAD_OPTION_ACTIVE;
	else
		load_attrs &= ~LOAD_OPTION_ACTIVE;

	FUNC4(data, load_attrs);

	if (FUNC5(name, data, size) < 0)
		FUNC2(1, "handle activity efi_set_variable");
}