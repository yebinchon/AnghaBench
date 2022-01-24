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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct timespec {scalar_t__ tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct bintime {scalar_t__ sec; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct bintime*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct timespec*,struct timespec*) ; 

__attribute__((used)) static inline void
FUNC3(uint64_t attr_valid, uint32_t attr_valid_nsec,
	struct bintime *timeout)
{
	struct timespec now, duration, timeout_ts;

	FUNC0(&now);
	/* "+ 2" is the bound of attr_valid_nsec + now.tv_nsec */
	/* Why oh why isn't there a TIME_MAX defined? */
	if (attr_valid >= INT_MAX || attr_valid + now.tv_sec + 2 >= INT_MAX) {
		timeout->sec = INT_MAX;
	} else {
		duration.tv_sec = attr_valid;
		duration.tv_nsec = attr_valid_nsec;
		FUNC2(&duration, &now, &timeout_ts);
		FUNC1(&timeout_ts, timeout);
	}
}