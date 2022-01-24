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
struct trussinfo {struct threadinfo* curthread; } ;
struct threadinfo {int /*<<< orphan*/  after; int /*<<< orphan*/  in_syscall; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct threadinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct trussinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct trussinfo *info)
{
	struct threadinfo *t;

	t = info->curthread;
	if (!t->in_syscall)
		return;

	FUNC0(CLOCK_REALTIME, &t->after);

	FUNC2(info, 0, NULL);
	FUNC1(t);
}