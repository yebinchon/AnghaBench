#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* platform_t ;
typedef  int /*<<< orphan*/  phandle_t ;
struct TYPE_6__ {char* fdt_compatible; } ;
struct TYPE_5__ {int /*<<< orphan*/ * cls; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC3(platform_t plat)
{
	const char *compat;
	phandle_t root;

	/*
	 * TODO: Make these KASSERTs, we should only be here if we
	 * are using the FDT platform magic.
	 */
	if (plat->cls == NULL || FUNC0(plat) == NULL)
		return 1;

	/* Is the device is compatible? */
	root = FUNC1("/");
	compat = FUNC0(plat)->fdt_compatible;
	if (FUNC2(root, compat) != 0)
		return 0;

	/* Not compatible, return an error */
	return 1;
}