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
typedef  scalar_t__ uint32_t ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int cvmx_rtc_options_t ;

/* Variables and functions */
 int CVMX_RTC_WRITE ; 
 int EINVAL ; 
 int ENOTSUP ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct timespec *ts)
{
	cvmx_rtc_options_t supported;
	uint32_t status;

	supported = FUNC0();
	if ((supported & CVMX_RTC_WRITE) == 0)
		return (ENOTSUP);

	status = FUNC1(ts->tv_sec);
	if (status != 0)
		return (EINVAL);

	return (0);
}