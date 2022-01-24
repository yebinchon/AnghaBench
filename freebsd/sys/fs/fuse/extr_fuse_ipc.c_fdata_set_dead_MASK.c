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
struct fuse_data {int /*<<< orphan*/  ms_mtx; int /*<<< orphan*/  ticketer; int /*<<< orphan*/  ks_rsel; int /*<<< orphan*/  dataflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSESS_DEAD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ PZERO ; 
 scalar_t__ FUNC2 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_data*) ; 

void
FUNC8(struct fuse_data *data)
{
	FUNC0();
	if (FUNC2(data)) {
		FUNC1();
		return;
	}
	FUNC3(data->ms_mtx);
	data->dataflags |= FSESS_DEAD;
	FUNC7(data);
	FUNC5(&data->ks_rsel, PZERO + 1);
	FUNC6(&data->ticketer);
	FUNC4(data->ms_mtx);
	FUNC1();
}