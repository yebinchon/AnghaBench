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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t u_int ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t MAXCPU ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ ** cpu_list ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 size_t mp_maxid ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const uint32_t *reg;
	size_t reg_size;
	u_int cpuid;
	int i;

	cpuid = FUNC2(dev);

	if (cpuid >= MAXCPU || cpuid > mp_maxid)
		return (EINVAL);
	FUNC0(cpu_list[cpuid] == NULL, ("Already have cpu %u", cpuid));

	reg = FUNC1(dev, &reg_size);
	if (reg == NULL)
		return (EINVAL);

	if (bootverbose) {
		FUNC3(dev, "register <");
		for (i = 0; i < reg_size; i++)
			FUNC4("%s%x", (i == 0) ? "" : " ", reg[i]);
		FUNC4(">\n");
	}

	/* Set the device to start it later */
	cpu_list[cpuid] = dev;

	return (0);
}