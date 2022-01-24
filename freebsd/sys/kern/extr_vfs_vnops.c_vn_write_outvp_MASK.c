#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_3__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_SHARED ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int FUNC6 (struct vnode*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct vnode*,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct vnode*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,struct ucred*) ; 
 int FUNC9 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vnode*,scalar_t__,int,struct ucred*) ; 

__attribute__((used)) static int
FUNC11(struct vnode *outvp, char *dat, off_t outoff, off_t xfer,
    u_long blksize, bool growfile, bool checkhole, struct ucred *cred)
{
	struct mount *mp;
	off_t dataoff, holeoff, xfer2;
	int error, lckf;

	/*
	 * Loop around doing writes of blksize until write has been completed.
	 * Lock/unlock on each loop iteration so that a bwillwrite() can be
	 * done for each iteration, since the xfer argument can be very
	 * large if there is a large hole to punch in the output file.
	 */
	error = 0;
	holeoff = 0;
	do {
		xfer2 = FUNC1(xfer, blksize);
		if (checkhole) {
			/*
			 * Punching a hole.  Skip writing if there is
			 * already a hole in the output file.
			 */
			xfer2 = FUNC8(outvp, xfer2, &outoff, &xfer,
			    &dataoff, &holeoff, cred);
			if (xfer == 0)
				break;
			if (holeoff < 0)
				checkhole = false;
			FUNC0(xfer2 > 0, ("vn_write_outvp: xfer2=%jd",
			    (intmax_t)xfer2));
		}
		FUNC4();
		mp = NULL;
		error = FUNC9(outvp, &mp, V_WAIT);
		if (error == 0) {
			if (FUNC2(mp))
				lckf = LK_SHARED;
			else
				lckf = LK_EXCLUSIVE;
			error = FUNC6(outvp, lckf);
		}
		if (error == 0) {
			if (growfile)
				error = FUNC10(outvp, outoff + xfer,
				    false, cred);
			else {
				error = FUNC7(UIO_WRITE, outvp, dat, xfer2,
				    outoff, UIO_SYSSPACE, IO_NODELOCKED,
				    curthread->td_ucred, cred, NULL, curthread);
				outoff += xfer2;
				xfer -= xfer2;
			}
			FUNC3(outvp, 0);
		}
		if (mp != NULL)
			FUNC5(mp);
	} while (!growfile && xfer > 0 && error == 0);
	return (error);
}