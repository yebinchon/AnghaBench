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
struct cpu_device {int /*<<< orphan*/  cd_pcpu; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  CPU_IVAR_NOMINAL_MHZ 129 
#define  CPU_IVAR_PCPU 128 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct cpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsc_freq ; 
 int /*<<< orphan*/  tsc_is_invariant ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, int index, uintptr_t *result)
{
	struct cpu_device *cpdev;

	switch (index) {
	case CPU_IVAR_PCPU:
		cpdev = FUNC1(child);
		*result = (uintptr_t)cpdev->cd_pcpu;
		break;
	case CPU_IVAR_NOMINAL_MHZ:
		if (tsc_is_invariant) {
			*result = (uintptr_t)(FUNC0(&tsc_freq) /
			    1000000);
			break;
		}
		/* FALLTHROUGH */
	default:
		return (ENOENT);
	}
	return (0);
}