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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int acpi_mem_fd ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  maplist ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{

	if (acpi_mem_fd == -1) {
		acpi_mem_fd = FUNC2("/dev/mem", O_RDONLY);
		if (acpi_mem_fd == -1)
			FUNC1(1, "opening /dev/mem");
		FUNC0(&maplist);
	}
}