#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sbi_ret {scalar_t__ error; scalar_t__ value; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SBI_CLEAR_IPI ; 
 int /*<<< orphan*/  SBI_CONSOLE_GETCHAR ; 
 int /*<<< orphan*/  SBI_CONSOLE_PUTCHAR ; 
 int /*<<< orphan*/  SBI_REMOTE_FENCE_I ; 
 int /*<<< orphan*/  SBI_REMOTE_SFENCE_VMA ; 
 int /*<<< orphan*/  SBI_REMOTE_SFENCE_VMA_ASID ; 
 int /*<<< orphan*/  SBI_SEND_IPI ; 
 int /*<<< orphan*/  SBI_SET_TIMER ; 
 int /*<<< orphan*/  SBI_SHUTDOWN ; 
 int /*<<< orphan*/  marchid ; 
 int /*<<< orphan*/  mimpid ; 
 int /*<<< orphan*/  mvendorid ; 
 TYPE_5__ FUNC1 () ; 
 TYPE_4__ FUNC2 () ; 
 TYPE_3__ FUNC3 () ; 
 TYPE_2__ FUNC4 () ; 
 TYPE_1__ FUNC5 () ; 
 struct sbi_ret FUNC6 () ; 
 int /*<<< orphan*/  sbi_impl_id ; 
 int /*<<< orphan*/  sbi_impl_version ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ sbi_spec_version ; 

void
FUNC8(void)
{
	struct sbi_ret sret;

	/*
	 * Get the spec version. For legacy SBI implementations this will
	 * return an error, otherwise it is guaranteed to succeed.
	 */
	sret = FUNC6();
	if (sret.error != 0) {
		/* We are running a legacy SBI implementation. */
		sbi_spec_version = 0;
		return;
	}

	/* Set the SBI implementation info. */
	sbi_spec_version = sret.value;
	sbi_impl_id = FUNC1().value;
	sbi_impl_version = FUNC2().value;

	/* Set the hardware implementation info. */
	mvendorid = FUNC5().value;
	marchid = FUNC3().value;
	mimpid = FUNC4().value;

	/*
	 * Probe for legacy extensions. Currently we rely on all of them
	 * to be implemented, but this is not guaranteed by the spec.
	 */
	FUNC0(FUNC7(SBI_SET_TIMER) != 0,
	    ("SBI doesn't implement sbi_set_timer()"));
	FUNC0(FUNC7(SBI_CONSOLE_PUTCHAR) != 0,
	    ("SBI doesn't implement sbi_console_putchar()"));
	FUNC0(FUNC7(SBI_CONSOLE_GETCHAR) != 0,
	    ("SBI doesn't implement sbi_console_getchar()"));
	FUNC0(FUNC7(SBI_CLEAR_IPI) != 0,
	    ("SBI doesn't implement sbi_clear_ipi()"));
	FUNC0(FUNC7(SBI_SEND_IPI) != 0,
	    ("SBI doesn't implement sbi_send_ipi()"));
	FUNC0(FUNC7(SBI_REMOTE_FENCE_I) != 0,
	    ("SBI doesn't implement sbi_remote_fence_i()"));
	FUNC0(FUNC7(SBI_REMOTE_SFENCE_VMA) != 0,
	    ("SBI doesn't implement sbi_remote_sfence_vma()"));
	FUNC0(FUNC7(SBI_REMOTE_SFENCE_VMA_ASID) != 0,
	    ("SBI doesn't implement sbi_remote_sfence_vma_asid()"));
	FUNC0(FUNC7(SBI_SHUTDOWN) != 0,
	    ("SBI doesn't implement sbi_shutdown()"));
}