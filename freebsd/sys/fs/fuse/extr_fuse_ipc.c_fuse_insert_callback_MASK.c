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
struct fuse_ticket {TYPE_1__* tk_data; int /*<<< orphan*/ * tk_aw_handler; } ;
typedef  int /*<<< orphan*/  fuse_handler_t ;
struct TYPE_2__ {int /*<<< orphan*/  aw_mtx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct fuse_ticket *ftick, fuse_handler_t * handler)
{
	if (FUNC0(ftick->tk_data)) {
		return;
	}
	ftick->tk_aw_handler = handler;

	FUNC2(ftick->tk_data->aw_mtx);
	FUNC1(ftick);
	FUNC3(ftick->tk_data->aw_mtx);
}