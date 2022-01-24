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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(bool isa, bool vga, bool subtractive)
{
	bool comma;

	if (isa || vga || subtractive) {
		comma = false;
		FUNC0("    decode     = ");
		if (isa) {
			FUNC0("ISA");
			comma = true;
		}
		if (vga) {
			FUNC0("%sVGA", comma ? ", " : "");
			comma = true;
		}
		if (subtractive)
			FUNC0("%ssubtractive", comma ? ", " : "");
		FUNC0("\n");
	}
}