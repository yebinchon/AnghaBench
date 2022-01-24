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
 int /*<<< orphan*/  FUNC0 (struct kinfo_proc const*,struct kinfo_proc const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kinfo_proc const*,struct kinfo_proc const*) ; 
 int /*<<< orphan*/  FUNC2 (struct kinfo_proc const*,struct kinfo_proc const*) ; 
 int /*<<< orphan*/  FUNC3 (struct kinfo_proc const*,struct kinfo_proc const*) ; 
 int /*<<< orphan*/  FUNC4 (struct kinfo_proc const*,struct kinfo_proc const*) ; 
 int /*<<< orphan*/  FUNC5 (struct kinfo_proc const*,struct kinfo_proc const*) ; 

__attribute__((used)) static int
FUNC6(const void *arg1, const void *arg2)
{
	const struct kinfo_proc *p1 = *(const struct kinfo_proc * const  *)arg1;
	const struct kinfo_proc *p2 = *(const struct kinfo_proc * const *) arg2;

	FUNC0(p1, p2);
	FUNC2(p1, p2);
	FUNC5(p1, p2);
	FUNC3(p1, p2);
	FUNC4(p1, p2);
	FUNC1(p1, p2);

	return (0);
}