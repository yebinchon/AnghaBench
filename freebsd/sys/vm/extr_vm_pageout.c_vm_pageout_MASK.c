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
struct thread {int /*<<< orphan*/  td_name; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ bootverbose ; 
 struct proc* curproc ; 
 struct thread* curthread ; 
 int FUNC1 (int /*<<< orphan*/  (*) (void*),void*,struct proc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  uma_reclaim_worker ; 
 int vm_ndomains ; 
 int /*<<< orphan*/  vm_oom_ratelim_mtx ; 
 int /*<<< orphan*/  vm_pageout_laundry_worker ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct proc *p;
	struct thread *td;
	int error, first, i;

	p = curproc;
	td = curthread;

	FUNC2(&vm_oom_ratelim_mtx, "vmoomr", NULL, MTX_DEF);
	FUNC6();
	for (first = -1, i = 0; i < vm_ndomains; i++) {
		if (FUNC0(i)) {
			if (bootverbose)
				FUNC4("domain %d empty; skipping pageout\n",
				    i);
			continue;
		}
		if (first == -1)
			first = i;
		else {
			error = FUNC1(vm_pageout_worker,
			    (void *)(uintptr_t)i, p, NULL, 0, 0, "dom%d", i);
			if (error != 0)
				FUNC3("starting pageout for domain %d: %d\n",
				    i, error);
		}
		error = FUNC1(vm_pageout_laundry_worker,
		    (void *)(uintptr_t)i, p, NULL, 0, 0, "laundry: dom%d", i);
		if (error != 0)
			FUNC3("starting laundry for domain %d: %d", i, error);
	}
	error = FUNC1(uma_reclaim_worker, NULL, p, NULL, 0, 0, "uma");
	if (error != 0)
		FUNC3("starting uma_reclaim helper, error %d\n", error);

	FUNC5(td->td_name, sizeof(td->td_name), "dom%d", first);
	FUNC7((void *)(uintptr_t)first);
}