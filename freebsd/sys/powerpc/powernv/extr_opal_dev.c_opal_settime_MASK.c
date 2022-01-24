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
struct timespec {int dummy; } ;
struct clocktime {int year; int nsec; int /*<<< orphan*/  hour; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; int /*<<< orphan*/  mon; int /*<<< orphan*/  day; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int OPAL_BUSY_EVENT ; 
 int /*<<< orphan*/  OPAL_POLL_EVENTS ; 
 int /*<<< orphan*/  OPAL_RTC_WRITE ; 
 int OPAL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct clocktime*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, struct timespec *ts)
{
	int rv;
	struct clocktime ct;
	uint32_t ymd = 0;
	uint64_t hmsm = 0;

	FUNC2(ts, &ct);

	ymd |= (uint32_t)FUNC0(ct.day);
	ymd |= ((uint32_t)FUNC0(ct.mon) << 8);
	ymd |= ((uint32_t)FUNC1(ct.year) << 16);

	hmsm |= ((uint64_t)FUNC1(ct.nsec/1000) << 16);
	hmsm |= ((uint64_t)FUNC0(ct.sec) << 40);
	hmsm |= ((uint64_t)FUNC0(ct.min) << 48);
	hmsm |= ((uint64_t)FUNC0(ct.hour) << 56);

	hmsm = FUNC4(hmsm);
	ymd = FUNC3(ymd);

	do {
		rv = FUNC5(OPAL_RTC_WRITE, FUNC7(&ymd), FUNC7(&hmsm));
		if (rv == OPAL_BUSY_EVENT) {
			rv = FUNC5(OPAL_POLL_EVENTS, 0);
			FUNC6("opalrtc", 1);
		}
	} while (rv == OPAL_BUSY_EVENT);

	if (rv != OPAL_SUCCESS)
		return (ENXIO);

	return (0);
}