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
typedef  scalar_t__ uoff_t ;
struct vnode {scalar_t__ v_type; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct thread {int /*<<< orphan*/  td_proc; } ;

/* Variables and functions */
 int EFBIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RLIMIT_FSIZE ; 
 int /*<<< orphan*/  SIGXFSZ ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC4(const struct vnode *vp, const struct uio *uio,
    struct thread *td)
{

	if (vp->v_type != VREG || td == NULL)
		return (0);
	if ((uoff_t)uio->uio_offset + uio->uio_resid >
	    FUNC3(td, RLIMIT_FSIZE)) {
		FUNC0(td->td_proc);
		FUNC2(td->td_proc, SIGXFSZ);
		FUNC1(td->td_proc);
		return (EFBIG);
	}
	return (0);
}