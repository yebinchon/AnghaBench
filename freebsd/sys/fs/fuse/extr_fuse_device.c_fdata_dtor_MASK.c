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
struct fuse_ticket {int /*<<< orphan*/  tk_aw_mtx; int /*<<< orphan*/  tk_aw_errno; } ;
struct fuse_data {int /*<<< orphan*/  ms_mtx; int /*<<< orphan*/  aw_mtx; int /*<<< orphan*/  ks_rsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_ticket*) ; 
 struct fuse_ticket* FUNC6 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct fuse_ticket* FUNC9 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct fuse_ticket*) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct fuse_data *fdata;
	struct fuse_ticket *tick;

	fdata = arg;
	if (fdata == NULL)
		return;

	FUNC3(fdata);

	FUNC1();
	FUNC7(fdata->aw_mtx);
	/* wakup poll()ers */
	FUNC11(&fdata->ks_rsel, PZERO + 1);
	/* Don't let syscall handlers wait in vain */
	while ((tick = FUNC6(fdata))) {
		FUNC7(tick->tk_aw_mtx);
		FUNC5(tick);
		tick->tk_aw_errno = ENOTCONN;
		FUNC12(tick);
		FUNC8(tick->tk_aw_mtx);
		FUNC0(tick);
		FUNC10(tick);
	}
	FUNC8(fdata->aw_mtx);

	/* Cleanup unsent operations */
	FUNC7(fdata->ms_mtx);
	while ((tick = FUNC9(fdata))) {
		FUNC10(tick);
	}
	FUNC8(fdata->ms_mtx);
	FUNC2();

	FUNC4(fdata);
}