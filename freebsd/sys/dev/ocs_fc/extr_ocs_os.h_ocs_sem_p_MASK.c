#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int /*<<< orphan*/  sem; } ;
typedef  TYPE_1__ ocs_sem_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct timeval*) ; 

__attribute__((used)) static inline int
FUNC4(ocs_sem_t *sem, int timeout_usec)
{
	int32_t rc = 0;

	if (timeout_usec == 0) {
		rc = FUNC1(&sem->sem);
		if (rc == 0) {
			rc = -1;
		}
	} else if (timeout_usec > 0) {
		struct timeval tv;
		uint32_t ticks;

		tv.tv_sec = timeout_usec / 1000000;
		tv.tv_usec = timeout_usec % 1000000;
		ticks = FUNC3(&tv);
		if (ticks == 0) {
			ticks ++;
		}
		rc = FUNC0(&sem->sem, ticks);
		if (rc != 0) {
			rc = -1;
		}
	} else {
		FUNC2(&sem->sem);
	}
	if (rc)
		rc = -1;

	return rc;
}