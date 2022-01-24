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
struct fid {int dummy; } ;
struct denode {int /*<<< orphan*/  de_FileSize; } ;
struct defid {int /*<<< orphan*/  defid_dirofs; int /*<<< orphan*/  defid_dirclust; } ;

/* Variables and functions */
 struct vnode* FUNC0 (struct denode*) ; 
 struct vnode* NULLVP ; 
 struct msdosfsmount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC2 (struct msdosfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct denode**) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct mount *mp, struct fid *fhp, int flags, struct vnode **vpp)
{
	struct msdosfsmount *pmp = FUNC1(mp);
	struct defid *defhp = (struct defid *) fhp;
	struct denode *dep;
	int error;

	error = FUNC2(pmp, defhp->defid_dirclust, defhp->defid_dirofs, &dep);
	if (error) {
		*vpp = NULLVP;
		return (error);
	}
	*vpp = FUNC0(dep);
	FUNC3(*vpp, dep->de_FileSize, curthread);
	return (0);
}