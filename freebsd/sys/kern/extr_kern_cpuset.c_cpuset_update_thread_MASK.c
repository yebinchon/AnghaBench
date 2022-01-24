#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dr_policy; } ;
struct thread {TYPE_1__ td_domain; struct cpuset* td_cpuset; } ;
struct cpuset {int /*<<< orphan*/  cs_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 

__attribute__((used)) static struct cpuset *
FUNC1(struct thread *td, struct cpuset *nset)
{
	struct cpuset *tdset;

	tdset = td->td_cpuset;
	td->td_cpuset = nset;
	td->td_domain.dr_policy = nset->cs_domain;
	FUNC0(td);

	return (tdset);
}