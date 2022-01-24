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
typedef  size_t u_int ;
struct vop_revoke_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {struct cdev* v_rdev; } ;
struct devfs_dirent {struct vnode* de_vnode; } ;
struct cdev_priv {scalar_t__ cdp_inuse; size_t cdp_maxdirent; int cdp_flags; int /*<<< orphan*/  cdp_c; struct devfs_dirent** cdp_dirents; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int CDP_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_INTERLOCK ; 
 int LK_RETRY ; 
 int REVOKEALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cdev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct cdev_priv* FUNC4 (struct cdev*) ; 
 int /*<<< orphan*/  cdevp_list ; 
 int /*<<< orphan*/  cdp_list ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  devfs_de_interlock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 scalar_t__ FUNC11 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 

__attribute__((used)) static int
FUNC16(struct vop_revoke_args *ap)
{
	struct vnode *vp = ap->a_vp, *vp2;
	struct cdev *dev;
	struct cdev_priv *cdp;
	struct devfs_dirent *de;
	u_int i;

	FUNC0((ap->a_flags & REVOKEALL) != 0, ("devfs_revoke !REVOKEALL"));

	dev = vp->v_rdev;
	cdp = FUNC4(dev);
 
	FUNC5();
	cdp->cdp_inuse++;
	FUNC7();

	FUNC13(vp);
	FUNC12(vp);
	FUNC10(vp);

	FUNC3(vp,0);
 loop:
	for (;;) {
		FUNC8(&devfs_de_interlock);
		FUNC5();
		vp2 = NULL;
		for (i = 0; i <= cdp->cdp_maxdirent; i++) {
			de = cdp->cdp_dirents[i];
			if (de == NULL)
				continue;

			vp2 = de->de_vnode;
			if (vp2 != NULL) {
				FUNC7();
				FUNC2(vp2);
				FUNC9(&devfs_de_interlock);
				if (FUNC11(vp2, LK_EXCLUSIVE | LK_INTERLOCK,
				    curthread))
					goto loop;
				FUNC13(vp2);
				FUNC12(vp2);
				FUNC10(vp2);
				FUNC15(vp2);
				break;
			} 
		}
		if (vp2 != NULL) {
			continue;
		}
		FUNC7();
		FUNC9(&devfs_de_interlock);
		break;
	}
	FUNC5();
	cdp->cdp_inuse--;
	if (!(cdp->cdp_flags & CDP_ACTIVE) && cdp->cdp_inuse == 0) {
		FUNC1(&cdevp_list, cdp, cdp_list);
		FUNC7();
		FUNC6(&cdp->cdp_c);
	} else
		FUNC7();

	FUNC14(vp, LK_EXCLUSIVE | LK_RETRY);
	return (0);
}