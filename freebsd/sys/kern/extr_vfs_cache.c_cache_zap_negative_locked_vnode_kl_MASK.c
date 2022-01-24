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
struct rwlock {int dummy; } ;
struct namecache {int nc_flag; struct vnode* nc_dvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NCF_NEGATIVE ; 
 struct rwlock* FUNC1 (struct namecache*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct namecache*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct rwlock*) ; 

__attribute__((used)) static void
FUNC6(struct namecache *ncp, struct vnode *vp)
{
	struct rwlock *blp;

	FUNC0(ncp->nc_dvp == vp);
	FUNC0(ncp->nc_flag & NCF_NEGATIVE);
	FUNC2(vp);

	blp = FUNC1(ncp);
	FUNC4(blp);
	FUNC3(ncp, false);
	FUNC5(blp);
}