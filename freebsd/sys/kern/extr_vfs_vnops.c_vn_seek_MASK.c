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
struct vnode {scalar_t__ v_type; } ;
struct vattr {scalar_t__ va_size; } ;
struct ucred {int dummy; } ;
struct TYPE_2__ {scalar_t__ tdu_off; } ;
struct thread {TYPE_1__ td_uretoff; struct ucred* td_ucred; } ;
struct file {struct vnode* f_vnode; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int EINVAL ; 
 int ENOTTY ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FIOSEEKDATA ; 
 int /*<<< orphan*/  FIOSEEKHOLE ; 
 int /*<<< orphan*/  FOF_NOUPDATE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
#define  L_INCR 132 
#define  L_SET 131 
#define  L_XTND 130 
 scalar_t__ OFF_MAX ; 
#define  SEEK_DATA 129 
#define  SEEK_HOLE 128 
 scalar_t__ VCHR ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,scalar_t__*,struct ucred*,struct thread*) ; 
 scalar_t__ FUNC4 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int) ; 

int
FUNC7(struct file *fp, off_t offset, int whence, struct thread *td)
{
	struct ucred *cred;
	struct vnode *vp;
	struct vattr vattr;
	off_t foffset, size;
	int error, noneg;

	cred = td->td_ucred;
	vp = fp->f_vnode;
	foffset = FUNC4(fp, 0);
	noneg = (vp->v_type != VCHR);
	error = 0;
	switch (whence) {
	case L_INCR:
		if (noneg &&
		    (foffset < 0 ||
		    (offset > 0 && foffset > OFF_MAX - offset))) {
			error = EOVERFLOW;
			break;
		}
		offset += foffset;
		break;
	case L_XTND:
		FUNC6(vp, LK_SHARED | LK_RETRY);
		error = FUNC1(vp, &vattr, cred);
		FUNC2(vp, 0);
		if (error)
			break;

		/*
		 * If the file references a disk device, then fetch
		 * the media size and use that to determine the ending
		 * offset.
		 */
		if (vattr.va_size == 0 && vp->v_type == VCHR &&
		    FUNC3(fp, DIOCGMEDIASIZE, &size, cred, td) == 0)
			vattr.va_size = size;
		if (noneg &&
		    (vattr.va_size > OFF_MAX ||
		    (offset > 0 && vattr.va_size > OFF_MAX - offset))) {
			error = EOVERFLOW;
			break;
		}
		offset += vattr.va_size;
		break;
	case L_SET:
		break;
	case SEEK_DATA:
		error = FUNC3(fp, FIOSEEKDATA, &offset, cred, td);
		if (error == ENOTTY)
			error = EINVAL;
		break;
	case SEEK_HOLE:
		error = FUNC3(fp, FIOSEEKHOLE, &offset, cred, td);
		if (error == ENOTTY)
			error = EINVAL;
		break;
	default:
		error = EINVAL;
	}
	if (error == 0 && noneg && offset < 0)
		error = EINVAL;
	if (error != 0)
		goto drop;
	FUNC0(vp, 0);
	td->td_uretoff.tdu_off = offset;
drop:
	FUNC5(fp, offset, error != 0 ? FOF_NOUPDATE : 0);
	return (error);
}