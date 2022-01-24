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
struct knote {int kn_data; int /*<<< orphan*/  kn_fflags; int /*<<< orphan*/  kn_flags; scalar_t__ kn_hook; } ;
struct fuse_data {int ms_count; int /*<<< orphan*/  ms_head; int /*<<< orphan*/  ms_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EV_EOF ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct knote *kn, long hint)
{
	struct fuse_data *data;
	int ready;

	data = (struct fuse_data*)kn->kn_hook;
	FUNC0(data != NULL);

	FUNC3(&data->ms_mtx, MA_OWNED);
	if (FUNC2(data)) {
		kn->kn_flags |= EV_EOF;
		kn->kn_fflags = ENODEV;
		kn->kn_data = 1;
		ready = 1;
	} else if (FUNC1(&data->ms_head)) {
		FUNC0(data->ms_count >= 1);
		kn->kn_data = data->ms_count;
		ready = 1;
	} else {
		ready = 0;
	}

	return (ready);
}