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
struct thread {int dummy; } ;
struct mount {struct thread* mnt_susp_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  VR_START_WRITE ; 
 int FUNC0 (struct thread*,struct mount*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mount*) ; 

__attribute__((used)) static int
FUNC3(struct thread *td, struct mount *mp, int type)
{
	int error;
	bool need_resume;

	/*
	 * mp is already suspended on unmount.  If not, suspend it, to
	 * avoid the situation where quotaoff operation eventually
	 * failing due to SU structures still keeping references on
	 * dquots, but vnode's references are already clean.  This
	 * would cause quota accounting leak and asserts otherwise.
	 * Note that the thread has already called vn_start_write().
	 */
	if (mp->mnt_susp_owner == td) {
		need_resume = false;
	} else {
		error = FUNC2(mp);
		if (error != 0)
			return (error);
		need_resume = true;
	}
	error = FUNC0(td, mp, type);
	if (need_resume)
		FUNC1(mp, VR_START_WRITE);
	return (error);
}