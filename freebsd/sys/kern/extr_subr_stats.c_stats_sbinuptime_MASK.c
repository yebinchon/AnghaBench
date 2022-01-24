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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC_FAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct timespec) ; 

__attribute__((used)) static inline sbintime_t
FUNC3(void)
{
	sbintime_t sbt;
#ifdef _KERNEL

	sbt = sbinuptime();
#else /* ! _KERNEL */
	struct timespec tp;

	FUNC0(CLOCK_MONOTONIC_FAST, &tp);
	sbt = FUNC2(tp);
#endif /* _KERNEL */

	return (sbt);
}