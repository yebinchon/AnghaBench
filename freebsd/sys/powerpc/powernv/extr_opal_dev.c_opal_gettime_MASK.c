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
struct clocktime {int nsec; int year; void* mon; void* day; void* hour; void* min; void* sec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int OPAL_BUSY_EVENT ; 
 int /*<<< orphan*/  OPAL_POLL_EVENTS ; 
 int /*<<< orphan*/  OPAL_RTC_READ ; 
 int OPAL_SUCCESS ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct clocktime*,struct timespec*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, struct timespec *ts)
{
	int rv;
	struct clocktime ct;
	uint32_t ymd;
	uint64_t hmsm;

	rv = FUNC5(OPAL_RTC_READ, FUNC7(&ymd), FUNC7(&hmsm));
	while (rv == OPAL_BUSY_EVENT)  {
		FUNC5(OPAL_POLL_EVENTS, 0);
		FUNC6("opalrtc", 1);
		rv = FUNC5(OPAL_RTC_READ, FUNC7(&ymd), FUNC7(&hmsm));
	}

	if (rv != OPAL_SUCCESS)
		return (ENXIO);

	hmsm = FUNC3(hmsm);
	ymd = FUNC2(ymd);

	ct.nsec	= FUNC1((hmsm & 0x000000ffffff0000) >> 16) * 1000;
	ct.sec	= FUNC0((hmsm & 0x0000ff0000000000) >> 40);
	ct.min	= FUNC0((hmsm & 0x00ff000000000000) >> 48);
	ct.hour	= FUNC0((hmsm & 0xff00000000000000) >> 56);

	ct.day	= FUNC0((ymd & 0x000000ff) >> 0);
	ct.mon	= FUNC0((ymd & 0x0000ff00) >> 8);
	ct.year	= FUNC1((ymd & 0xffff0000) >> 16);

	return (FUNC4(&ct, ts));
}