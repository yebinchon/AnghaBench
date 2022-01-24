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
struct statfs {scalar_t__ f_bavail; int f_blocks; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACCT_EXITREQ ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  M_STATFS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 scalar_t__ VBAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct statfs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  acct_state ; 
 int acct_suspended ; 
 int /*<<< orphan*/  acct_sx ; 
 TYPE_1__* acct_vp ; 
 int acctresume ; 
 int acctsuspend ; 
 int /*<<< orphan*/  FUNC2 (struct statfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct statfs* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct statfs *sp;

	FUNC5(&acct_sx, SX_XLOCKED);

	/*
	 * If accounting was disabled before our kthread was scheduled,
	 * then acct_vp might be NULL.  If so, just ask our kthread to
	 * exit and return.
	 */
	if (acct_vp == NULL) {
		acct_state |= ACCT_EXITREQ;
		return;
	}

	/*
	 * If our vnode is no longer valid, tear it down and signal the
	 * accounting thread to die.
	 */
	if (acct_vp->v_type == VBAD) {
		(void) FUNC1(NULL, 1);
		acct_state |= ACCT_EXITREQ;
		return;
	}

	/*
	 * Stopping here is better than continuing, maybe it will be VBAD
	 * next time around.
	 */
	sp = FUNC4(sizeof(struct statfs), M_STATFS, M_WAITOK);
	if (FUNC0(acct_vp->v_mount, sp) < 0) {
		FUNC2(sp, M_STATFS);
		return;
	}
	if (acct_suspended) {
		if (sp->f_bavail > (int64_t)(acctresume * sp->f_blocks /
		    100)) {
			acct_suspended = 0;
			FUNC3(LOG_NOTICE, "Accounting resumed\n");
		}
	} else {
		if (sp->f_bavail <= (int64_t)(acctsuspend * sp->f_blocks /
		    100)) {
			acct_suspended = 1;
			FUNC3(LOG_NOTICE, "Accounting suspended\n");
		}
	}
	FUNC2(sp, M_STATFS);
}