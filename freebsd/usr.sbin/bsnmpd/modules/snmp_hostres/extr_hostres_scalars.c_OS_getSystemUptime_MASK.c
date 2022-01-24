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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  kernel_boot_timestamp ;

/* Variables and functions */
 int CTL_KERN ; 
 int /*<<< orphan*/  FUNC0 (char*,long long,long) ; 
 int KERN_BOOTTIME ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 int UINT32_MAX ; 
 scalar_t__ FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int kernel_boot ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,struct timeval*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(uint32_t *ut)
{
	struct timeval right_now;
	uint64_t now;

	if (kernel_boot == 0) {
		/* first time, do the sysctl */
		struct timeval kernel_boot_timestamp;
		int mib[2] = { CTL_KERN, KERN_BOOTTIME };
		size_t len = sizeof(kernel_boot_timestamp);

		if (FUNC3(mib, FUNC2(mib), &kernel_boot_timestamp,
		    &len, NULL, 0) == -1) {
			FUNC4(LOG_ERR, "sysctl KERN_BOOTTIME failed: %m");
			return (SNMP_ERR_GENERR);
		}

		FUNC0("boot timestamp from kernel: {%lld, %ld}",
		    (long long)kernel_boot_timestamp.tv_sec,
		    (long)kernel_boot_timestamp.tv_usec);

		kernel_boot = ((uint64_t)kernel_boot_timestamp.tv_sec * 100) +
		    (kernel_boot_timestamp.tv_usec / 10000);
	}

	if (FUNC1(&right_now, NULL) < 0) {
		FUNC4(LOG_ERR, "gettimeofday failed: %m");
		return (SNMP_ERR_GENERR);
	}
	now = ((uint64_t)right_now.tv_sec * 100) + (right_now.tv_usec / 10000);

	if (now - kernel_boot > UINT32_MAX)
		*ut = UINT32_MAX;
	else
		*ut = now - kernel_boot;

	return (SNMP_ERR_NOERROR);
}