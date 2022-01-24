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
struct mount {int /*<<< orphan*/  mnt_listmtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRI_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vnode* FUNC1 (struct vnode**,struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 

struct vnode *
FUNC4(struct vnode **mvp, struct mount *mp)
{

	if (FUNC3())
		FUNC0(PRI_USER);
	FUNC2(&mp->mnt_listmtx);
	return (FUNC1(mvp, mp));
}