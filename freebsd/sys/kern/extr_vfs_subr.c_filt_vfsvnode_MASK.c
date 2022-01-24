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
struct vnode {scalar_t__ v_type; } ;
struct knote {long kn_sfflags; long kn_fflags; int /*<<< orphan*/  kn_flags; scalar_t__ kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_EOF ; 
 long NOTE_REVOKE ; 
 scalar_t__ VBAD ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 

__attribute__((used)) static int
FUNC2(struct knote *kn, long hint)
{
	struct vnode *vp = (struct vnode *)kn->kn_hook;
	int res;

	FUNC0(vp);
	if (kn->kn_sfflags & hint)
		kn->kn_fflags |= hint;
	if (hint == NOTE_REVOKE || (hint == 0 && vp->v_type == VBAD)) {
		kn->kn_flags |= EV_EOF;
		FUNC1(vp);
		return (1);
	}
	res = (kn->kn_fflags != 0);
	FUNC1(vp);
	return (res);
}