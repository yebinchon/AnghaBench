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
struct vnode {int dummy; } ;
struct mount {int mnt_kern_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int MNTK_MWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 

__attribute__((used)) static void
FUNC8(struct mount *mp, struct vnode *coveredvp, int mntkflags)
{

	FUNC3(FUNC1(mp), MA_OWNED);
	mp->mnt_kern_flag &= ~mntkflags;
	if ((mp->mnt_kern_flag & MNTK_MWAIT) != 0) {
		mp->mnt_kern_flag &= ~MNTK_MWAIT;
		FUNC7(mp);
	}
	FUNC5(mp);
	FUNC0(mp);
	if (coveredvp != NULL) {
		FUNC2(coveredvp, 0);
		FUNC4(coveredvp);
	}
	FUNC6(mp);
}