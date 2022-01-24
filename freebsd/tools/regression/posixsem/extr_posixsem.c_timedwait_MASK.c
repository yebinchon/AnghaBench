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
typedef  int u_int ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef  int /*<<< orphan*/  semid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*,struct timespec*,struct timespec*) ; 

__attribute__((used)) static int
FUNC6(semid_t id, u_int msec, u_int *delta, int error)
{
	struct timespec start, end;

	if (FUNC0(CLOCK_REALTIME, &start) < 0) {
		FUNC2("clock_gettime(CLOCK_REALTIME)");
		return (-1);
	}
	end.tv_sec = msec / 1000;
	end.tv_nsec = msec % 1000 * 1000000;
	FUNC4(&end, &start, &end);
	if (FUNC3(id, &end) < 0) {
		if (errno != error) {
			FUNC2("ksem_timedwait");
			return (-1);
		}
	} else if (error != 0) {
		FUNC1("ksem_timedwait() didn't fail");
		return (-1);
	}
	if (FUNC0(CLOCK_REALTIME, &end) < 0) {
		FUNC2("clock_gettime(CLOCK_REALTIME)");
		return (-1);
	}
	FUNC5(&end, &start, &end);
	*delta = end.tv_nsec / 1000000;
	*delta += end.tv_sec * 1000;
	return (0);
}