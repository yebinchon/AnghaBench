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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct fuse_data {scalar_t__ ref; int /*<<< orphan*/  ms_mtx; TYPE_1__ ks_rsel; int /*<<< orphan*/  aw_mtx; int /*<<< orphan*/  daemoncred; int /*<<< orphan*/  rename_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_FUSEMSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct fuse_data *data)
{
	data->ref--;
	FUNC0(data->ref >= 0);
	if (data->ref != 0)
		return;

	/* Driving off stage all that stuff thrown at device... */
	FUNC6(&data->rename_lock);
	FUNC1(data->daemoncred);
	FUNC5(&data->aw_mtx);
	FUNC3(&data->ks_rsel.si_note, curthread, 0);
	FUNC4(&data->ks_rsel.si_note);
	FUNC5(&data->ms_mtx);

	FUNC2(data, M_FUSEMSG);
}