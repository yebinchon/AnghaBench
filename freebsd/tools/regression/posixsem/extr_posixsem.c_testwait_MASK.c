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
struct timespec {int tv_nsec; int tv_sec; } ;
typedef  int /*<<< orphan*/  semid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,struct timespec*,struct timespec*) ; 

__attribute__((used)) static int
FUNC4(semid_t id, u_int *delta)
{
	struct timespec start, end;

	if (FUNC0(CLOCK_REALTIME, &start) < 0) {
		FUNC1("clock_gettime(CLOCK_REALTIME)");
		return (-1);
	}
	if (FUNC2(id) < 0) {
		FUNC1("ksem_wait");
		return (-1);
	}
	if (FUNC0(CLOCK_REALTIME, &end) < 0) {
		FUNC1("clock_gettime(CLOCK_REALTIME)");
		return (-1);
	}
	FUNC3(&end, &start, &end);
	*delta = end.tv_nsec / 1000000;
	*delta += end.tv_sec * 1000;
	return (0);
}