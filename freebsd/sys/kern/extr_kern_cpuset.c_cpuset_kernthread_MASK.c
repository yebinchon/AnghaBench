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
struct thread {struct cpuset* td_cpuset; } ;
struct cpuset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpuset_kernel ; 
 struct cpuset* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

void
FUNC4(struct thread *td)
{
	struct cpuset *set;

	FUNC2(td);
	set = td->td_cpuset;
	td->td_cpuset = FUNC0(cpuset_kernel);
	FUNC3(td);
	FUNC1(set);
}