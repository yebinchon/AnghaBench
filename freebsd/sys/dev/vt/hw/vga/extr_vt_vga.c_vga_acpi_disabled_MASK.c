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
typedef  int uint16_t ;

/* Variables and functions */
 int ACPI_FADT_NO_VGA ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

__attribute__((used)) static bool
FUNC2(void)
{
#if defined(__amd64__) || defined(__i386__)
	uint16_t flags;
	int ignore;

	ignore = 0;
	FUNC0("hw.vga.acpi_ignore_no_vga", &ignore);
	if (ignore || !FUNC1(&flags))
 		return (false);
	return ((flags & ACPI_FADT_NO_VGA) != 0);
#else
	return (false);
#endif
}