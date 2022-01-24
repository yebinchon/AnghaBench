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
typedef  enum cpu_sets { ____Placeholder_cpu_sets } cpu_sets ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int EINVAL ; 
#define  INTR_CPUS 128 
 int /*<<< orphan*/  all_cpus ; 

__attribute__((used)) static int
FUNC0(device_t dev, device_t child, enum cpu_sets op, size_t setsize,
    cpuset_t *cpuset)
{

	switch (op) {
	case INTR_CPUS:
		/* Default to returning the set of all CPUs. */
		if (setsize != sizeof(cpuset_t))
			return (EINVAL);
		*cpuset = all_cpus;
		return (0);
	default:
		return (EINVAL);
	}
}