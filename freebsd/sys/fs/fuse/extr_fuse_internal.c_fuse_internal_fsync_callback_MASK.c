#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct TYPE_3__ {scalar_t__ error; } ;
struct fuse_ticket {TYPE_2__* tk_data; TYPE_1__ tk_aw_ohead; } ;
struct TYPE_4__ {int /*<<< orphan*/  mp; } ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_ticket*) ; 

int
FUNC2(struct fuse_ticket *tick, struct uio *uio)
{
	if (tick->tk_aw_ohead.error == ENOSYS) {
		FUNC0(tick->tk_data->mp, FUNC1(tick));
	}
	return 0;
}