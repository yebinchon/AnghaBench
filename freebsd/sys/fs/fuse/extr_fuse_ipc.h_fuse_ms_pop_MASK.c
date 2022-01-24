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
struct TYPE_2__ {int /*<<< orphan*/ * stqe_next; } ;
struct fuse_ticket {TYPE_1__ tk_ms_link; } ;
struct fuse_data {scalar_t__ ms_count; int /*<<< orphan*/  ms_head; int /*<<< orphan*/  ms_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fuse_ticket* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tk_ms_link ; 

__attribute__((used)) static inline struct fuse_ticket *
FUNC4(struct fuse_data *data)
{
	struct fuse_ticket *ftick = NULL;

	FUNC3(&data->ms_mtx, MA_OWNED);

	if ((ftick = FUNC1(&data->ms_head))) {
		FUNC2(&data->ms_head, tk_ms_link);
		data->ms_count--;
#ifdef INVARIANTS
		MPASS(data->ms_count >= 0);
		ftick->tk_ms_link.stqe_next = NULL;
#endif
	}

	return (ftick);
}