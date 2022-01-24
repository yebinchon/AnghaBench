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
typedef  int u_long ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct mount {int dummy; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  fsid_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int EPERM ; 
#define  UFSRESUME 129 
#define  UFSSUSPEND 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (void**) ; 
 int FUNC2 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ffs_susp_dtor ; 
 int /*<<< orphan*/  ffs_susp_lock ; 
 int FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mount*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 

__attribute__((used)) static int
FUNC12(struct cdev *dev, u_long cmd, caddr_t addr, int flags,
    struct thread *td)
{
	struct mount *mp;
	fsid_t *fsidp;
	int error;

	/*
	 * No suspend inside the jail.  Allowing it would require making
	 * sure that e.g. the devfs ruleset for that jail permits access
	 * to the devvp.
	 */
	if (FUNC5(td->td_ucred))
		return (EPERM);

	FUNC6(&ffs_susp_lock);

	switch (cmd) {
	case UFSSUSPEND:
		fsidp = (fsid_t *)addr;
		mp = FUNC9(fsidp);
		if (mp == NULL) {
			error = ENOENT;
			break;
		}
		error = FUNC8(mp, 0);
		FUNC10(mp);
		if (error != 0)
			break;
		error = FUNC3(mp);
		if (error != 0) {
			FUNC11(mp);
			break;
		}
		error = FUNC2(mp, ffs_susp_dtor);
		if (error != 0)
			FUNC4(mp);
		break;
	case UFSRESUME:
		error = FUNC1((void **)&mp);
		if (error != 0)
			break;
		/*
		 * This calls ffs_susp_dtor, which in turn unsuspends the fs.
		 * The dtor expects to be called without lock held, because
		 * sometimes it's called from here, and sometimes due to the
		 * file being closed or process exiting.
		 */
		FUNC7(&ffs_susp_lock);
		FUNC0();
		return (0);
	default:
		error = ENXIO;
		break;
	}

	FUNC7(&ffs_susp_lock);

	return (error);
}