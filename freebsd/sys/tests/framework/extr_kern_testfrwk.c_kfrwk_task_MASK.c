#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kern_totfrwk {int /*<<< orphan*/  kfrwk_waiting; int /*<<< orphan*/  kfrwk_que; int /*<<< orphan*/  kfrwk_tq; int /*<<< orphan*/  kfrwk_testq; } ;
struct TYPE_4__ {scalar_t__ tot_threads_running; } ;
struct kern_test_entry {TYPE_1__* kt_e; TYPE_2__ kt_data; } ;
struct kern_test {int dummy; } ;
typedef  int /*<<< orphan*/  kt_data ;
typedef  int /*<<< orphan*/  (* kerntfunc ) (struct kern_test*) ;
struct TYPE_3__ {int /*<<< orphan*/  (* func ) (struct kern_test*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_KTFRWK ; 
 struct kern_test_entry* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct kern_test_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kern_test_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kern_test*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kern_test*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC8 (struct kern_test*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void *context, int pending)
{
	struct kern_totfrwk *tf;
	struct kern_test_entry *wk;
	int free_mem = 0;
	struct kern_test kt_data;
	kerntfunc ktf;

	FUNC7(&kt_data, 0, sizeof(kt_data));
	ktf = NULL;
	tf = (struct kern_totfrwk *)context;
	FUNC0();
	wk = FUNC2(&tf->kfrwk_testq);
	if (wk) {
		wk->kt_data.tot_threads_running--;
		tf->kfrwk_waiting--;
		FUNC6(&kt_data, &wk->kt_data, sizeof(kt_data));
		if (wk->kt_data.tot_threads_running == 0) {
			FUNC3(&tf->kfrwk_testq, wk, next);
			free_mem = 1;
		} else {
			/* Wake one of my colleages up to help too */
			FUNC9(tf->kfrwk_tq, &tf->kfrwk_que);
		}
		if (wk->kt_e) {
			ktf = wk->kt_e->func;
		}
	}
	FUNC1();
	if (wk && free_mem) {
		FUNC5(wk, M_KTFRWK);
	}
	/* Execute the test */
	if (ktf) {
		(*ktf) (&kt_data);
	}
	/* We are done */
	FUNC4(&tf->kfrwk_waiting, 1);
}