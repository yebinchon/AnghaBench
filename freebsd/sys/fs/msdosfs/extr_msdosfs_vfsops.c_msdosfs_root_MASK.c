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

/* Variables and functions */
 struct vnode* FUNC0 (struct denode*) ; 
 int /*<<< orphan*/  MSDOSFSROOT ; 
 int /*<<< orphan*/  MSDOSFSROOT_OFS ; 
 struct msdosfsmount* FUNC1 (struct mount*) ; 
 int FUNC2 (struct msdosfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct denode**) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct mount*,struct msdosfsmount*) ; 

__attribute__((used)) static int
FUNC4(struct mount *mp, int flags, struct vnode **vpp)
{
	struct msdosfsmount *pmp = FUNC1(mp);
	struct denode *ndep;
	int error;

#ifdef MSDOSFS_DEBUG
	printf("msdosfs_root(); mp %p, pmp %p\n", mp, pmp);
#endif
	error = FUNC2(pmp, MSDOSFSROOT, MSDOSFSROOT_OFS, &ndep);
	if (error)
		return (error);
	*vpp = FUNC0(ndep);
	return (0);
}