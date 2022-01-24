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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct thread {int td_kstack_pages; int /*<<< orphan*/  td_kstack; int /*<<< orphan*/  td_kstack_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  PQ_LAUNDRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct thread *td)
{
	vm_object_t ksobj;
	vm_page_t m;
	int i, pages;

	FUNC2(td);
	pages = td->td_kstack_pages;
	ksobj = td->td_kstack_obj;
	FUNC4(td->td_kstack, pages);
	FUNC0(ksobj);
	for (i = 0; i < pages; i++) {
		m = FUNC6(ksobj, i);
		if (m == NULL)
			FUNC3("vm_thread_swapout: kstack already missing?");
		FUNC5(m);
		FUNC7(m, PQ_LAUNDRY);
	}
	FUNC1(ksobj);
}