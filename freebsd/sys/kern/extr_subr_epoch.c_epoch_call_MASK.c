#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * epoch_t ;
typedef  TYPE_1__* epoch_record_t ;
typedef  scalar_t__ epoch_context_t ;
typedef  int /*<<< orphan*/  ck_epoch_entry_t ;
typedef  int /*<<< orphan*/  ck_epoch_cb_t ;
struct TYPE_3__ {int /*<<< orphan*/  er_record; } ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (scalar_t__)) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  epoch_cb_count ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int inited ; 

void
FUNC7(epoch_t epoch, epoch_context_t ctx, void (*callback) (epoch_context_t))
{
	epoch_record_t er;
	ck_epoch_entry_t *cb;

	cb = (void *)ctx;

	FUNC1(callback);
	/* too early in boot to have epoch set up */
	if (FUNC2(epoch == NULL))
		goto boottime;
#if !defined(EARLY_AP_STARTUP)
	if (FUNC2(inited < 2))
		goto boottime;
#endif

	FUNC4();
	*FUNC0(epoch_cb_count) += 1;
	er = FUNC6(epoch);
	FUNC3(&er->er_record, cb, (ck_epoch_cb_t *)callback);
	FUNC5();
	return;
boottime:
	callback(ctx);
}