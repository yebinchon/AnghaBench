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
struct thread {int dummy; } ;
struct mount {int /*<<< orphan*/ * mnt_data; } ;
struct fuse_dispatcher {int dummy; } ;
struct fuse_data {struct cdev* fdev; int /*<<< orphan*/ * mp; struct vnode* vroot; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int FORCECLOSE ; 
 int /*<<< orphan*/  FUSE_DESTROY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*) ; 
 scalar_t__ FUNC5 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_dispatcher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct mount*,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct fuse_dispatcher*) ; 
 scalar_t__ FUNC12 (struct mount*,int /*<<< orphan*/ ) ; 
 struct fuse_data* FUNC13 (struct mount*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (struct mount*,int /*<<< orphan*/ ,int,struct thread*) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*) ; 

__attribute__((used)) static int
FUNC17(struct mount *mp, int mntflags)
{
	int err = 0;
	int flags = 0;

	struct cdev *fdev;
	struct fuse_data *data;
	struct fuse_dispatcher fdi;
	struct thread *td = curthread;

	if (mntflags & MNT_FORCE) {
		flags |= FORCECLOSE;
	}
	data = FUNC13(mp);
	if (!data) {
		FUNC14("no private data for mount point?");
	}
	/* There is 1 extra root vnode reference (mp->mnt_data). */
	FUNC0();
	if (data->vroot != NULL) {
		struct vnode *vroot = data->vroot;

		data->vroot = NULL;
		FUNC1();
		FUNC16(vroot);
	} else
		FUNC1();
	err = FUNC15(mp, 0, flags, td);
	if (err) {
		return err;
	}
	if (FUNC5(data)) {
		goto alreadydead;
	}
	if (FUNC12(mp, FUSE_DESTROY)) {
		FUNC9(&fdi, 0);
		FUNC10(&fdi, FUSE_DESTROY, mp, 0, td, NULL);

		(void)FUNC11(&fdi);
		FUNC8(&fdi);
	}

	FUNC6(data);

alreadydead:
	FUNC0();
	data->mp = NULL;
	fdev = data->fdev;
	FUNC7(data);
	FUNC1();

	FUNC2(mp);
	mp->mnt_data = NULL;
	FUNC3(mp);

	FUNC4(fdev);

	return 0;
}