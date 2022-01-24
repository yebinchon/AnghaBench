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
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int MAXCPU ; 
 int MAX_APIC_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCPUOP_is_up ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vcpu_id ; 

__attribute__((used)) static int
FUNC4(void)
{
#ifdef SMP
	int i, ret;

	for (i = 0; i < MAXCPU && (i * 2) < MAX_APIC_ID; i++) {
		ret = HYPERVISOR_vcpu_op(VCPUOP_is_up, i, NULL);
		if (ret >= 0)
			lapic_create((i * 2), (i == 0));
	}
#endif

	FUNC1(vcpu_id, 0);
	FUNC3(0);
	return (0);
}