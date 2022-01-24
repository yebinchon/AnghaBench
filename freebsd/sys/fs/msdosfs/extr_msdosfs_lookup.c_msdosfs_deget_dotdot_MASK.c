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
struct msdosfsmount {int dummy; } ;
struct mount {int dummy; } ;
struct denode {int dummy; } ;
struct deget_dotdot {int /*<<< orphan*/  blkoff; int /*<<< orphan*/  cluster; } ;

/* Variables and functions */
 struct vnode* FUNC0 (struct denode*) ; 
 struct msdosfsmount* FUNC1 (struct mount*) ; 
 int FUNC2 (struct msdosfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct denode**) ; 

__attribute__((used)) static int
FUNC3(struct mount *mp, void *arg, int lkflags,
    struct vnode **rvp)
{
	struct deget_dotdot *dd_arg;
	struct denode *rdp;
	struct msdosfsmount *pmp;
	int error;

	pmp = FUNC1(mp);
	dd_arg = arg;
	error = FUNC2(pmp, dd_arg->cluster, dd_arg->blkoff,  &rdp);
	if (error == 0)
		*rvp = FUNC0(rdp);
	return (error);
}