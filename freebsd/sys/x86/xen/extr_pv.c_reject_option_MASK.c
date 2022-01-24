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
 unsigned int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const char *option)
{
	static const char *reject[] = {
		"acpi.rsdp",
	};
	unsigned int i;

	for (i = 0; i < FUNC0(reject); i++)
		if (FUNC2(option, reject[i], FUNC1(reject[i])) == 0)
			return (true);

	return (false);
}