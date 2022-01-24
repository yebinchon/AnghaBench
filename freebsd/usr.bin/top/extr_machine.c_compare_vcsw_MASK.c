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
struct kinfo_proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kinfo_proc const*,long*,long*,long*,long*,long*) ; 

__attribute__((used)) static int
FUNC1(const void *arg1, const void *arg2)
{
	const struct kinfo_proc *p1 = *(const struct kinfo_proc * const *)arg1;
	const struct kinfo_proc *p2 = *(const struct kinfo_proc * const *)arg2;
	long dummy, flp1, flp2;

	(void) FUNC0(p1, &dummy, &dummy, &dummy, &flp1, &dummy);
	(void) FUNC0(p2, &dummy, &dummy, &dummy, &flp2, &dummy);

	return (flp2 - flp1);
}