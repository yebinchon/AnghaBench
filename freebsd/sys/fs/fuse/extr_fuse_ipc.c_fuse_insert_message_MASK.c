#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fuse_ticket {int tk_flag; TYPE_1__* tk_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int /*<<< orphan*/  ms_mtx; TYPE_2__ ks_rsel; } ;

/* Variables and functions */
 int FT_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PZERO ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(struct fuse_ticket *ftick, bool urgent)
{
	if (ftick->tk_flag & FT_DIRTY) {
		FUNC6("FUSE: ticket reused without being refreshed");
	}
	ftick->tk_flag |= FT_DIRTY;

	if (FUNC1(ftick->tk_data)) {
		return;
	}
	FUNC2(ftick->tk_data->ms_mtx);
	if (urgent)
		FUNC5(ftick);
	else
		FUNC4(ftick);
	FUNC8(ftick->tk_data);
	FUNC7(&ftick->tk_data->ks_rsel, PZERO + 1);
	FUNC0(&ftick->tk_data->ks_rsel.si_note, 0);
	FUNC3(ftick->tk_data->ms_mtx);
}