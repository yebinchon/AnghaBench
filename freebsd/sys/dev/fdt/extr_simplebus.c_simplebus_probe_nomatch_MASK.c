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
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(device_t bus, device_t child)
{
	const char *name, *type, *compat;

	if (!bootverbose)
		return;

	compat = FUNC2(child);
	if (compat == NULL)
		return;
	name = FUNC3(child);
	type = FUNC4(child);

	FUNC1(bus, "<%s>", name != NULL ? name : "unknown");
	FUNC7(FUNC0(child));
	if (!FUNC5(child))
		FUNC6(" disabled");
	if (type)
		FUNC6(" type %s", type);
	FUNC6(" compat %s (no driver attached)\n", compat);
}