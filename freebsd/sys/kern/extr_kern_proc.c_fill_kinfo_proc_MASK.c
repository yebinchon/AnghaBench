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
struct proc {int dummy; } ;
struct kinfo_proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct kinfo_proc*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct proc *p, struct kinfo_proc *kp)
{

	FUNC1(FUNC0(p) != NULL);

	FUNC3(p, kp);
	FUNC4(FUNC0(p), kp, 0);
	FUNC2(p, kp);
}