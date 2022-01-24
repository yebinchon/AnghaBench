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
struct uio {int dummy; } ;
struct TYPE_2__ {scalar_t__ error; } ;
struct fuse_ticket {TYPE_1__ tk_aw_ohead; } ;

/* Variables and functions */
 int FUNC0 (struct fuse_ticket*,struct uio*) ; 
 int FUNC1 (struct fuse_ticket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uio*) ; 

int
FUNC3(struct fuse_ticket *ftick, struct uio *uio)
{
	int err = 0;

	if (ftick->tk_aw_ohead.error) {
		return 0;
	}
	err = FUNC1(ftick, FUNC2(uio));
	if (!err) {
		err = FUNC0(ftick, uio);
	}
	return err;
}