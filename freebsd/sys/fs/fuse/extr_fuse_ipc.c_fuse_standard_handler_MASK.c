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
struct uio {int dummy; } ;
struct fuse_ticket {int tk_aw_errno; int /*<<< orphan*/  tk_aw_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_ticket*) ; 
 int FUNC1 (struct fuse_ticket*,struct uio*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_ticket*) ; 

__attribute__((used)) static int
FUNC6(struct fuse_ticket *ftick, struct uio *uio)
{
	int err = 0;

	err = FUNC1(ftick, uio);

	FUNC3(ftick->tk_aw_mtx);

	if (!FUNC0(ftick)) {
		FUNC2(ftick);
		ftick->tk_aw_errno = err;
		FUNC5(ftick);
	}
	FUNC4(ftick->tk_aw_mtx);

	return err;
}