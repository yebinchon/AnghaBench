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
struct term_info {char* ti_name; char* ti_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_SETTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct term_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct term_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void
FUNC5(const char *name)
{
	struct term_info old_ti, ti;

	FUNC0(0, &old_ti);
	FUNC3((char *)ti.ti_name, name, sizeof(ti.ti_name));
	if (FUNC1(0, CONS_SETTERM, &ti) != 0)
		FUNC4("SETTERM '%s'", name);
	FUNC0(0, &ti);
	FUNC2("%s (%s) -> %s (%s)\n", old_ti.ti_name, old_ti.ti_desc,
	    ti.ti_name, ti.ti_desc);
}