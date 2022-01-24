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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  long double uint64_t ;
struct timespec {long double tv_nsec; int tv_sec; } ;
struct camdd_dev {scalar_t__ write_dev; scalar_t__ bytes_transferred; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC_PRECISE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long double,...) ; 
 long double FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(struct camdd_dev *camdd_dev, struct camdd_dev *other_dev, 
		   struct timespec *start_time)
{
	struct timespec done_time;
	uint64_t total_ns;
	long double mb_sec, total_sec;
	int error = 0;

	error = FUNC0(CLOCK_MONOTONIC_PRECISE, &done_time);
	if (error != 0) {
		FUNC4("Unable to get done time");
		return;
	}

	FUNC3(&done_time, start_time, &done_time);
	
	total_ns = done_time.tv_nsec + (done_time.tv_sec * 1000000000);
	total_sec = total_ns;
	total_sec /= 1000000000;

	FUNC1(stderr, "%Lf bytes %s %d\n%jd bytes %s %d\n"
		"%.4Lf seconds elapsed\n",
		(uintmax_t)camdd_dev->bytes_transferred,
		(camdd_dev->write_dev == 0) ?  "read from" : "written to",
		camdd_dev->device_name,
		(uintmax_t)other_dev->bytes_transferred,
		(other_dev->write_dev == 0) ? "read from" : "written to",
		other_dev->device_name, total_sec);

	mb_sec = FUNC2(other_dev->bytes_transferred,camdd_dev->bytes_transferred);
	mb_sec /= 1024 * 1024;
	mb_sec *= 1000000000;
	mb_sec /= total_ns;
	FUNC1(stderr, "%.2Lf MB/sec\n", mb_sec);
}