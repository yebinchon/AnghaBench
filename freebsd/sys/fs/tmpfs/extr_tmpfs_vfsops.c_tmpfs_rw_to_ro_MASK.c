#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mount {int mnt_flag; } ;
struct TYPE_2__ {int tm_ronly; } ;

/* Variables and functions */
 int EBUSY ; 
 int FORCECLOSE ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_RDONLY ; 
 TYPE_1__* FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int WRITECLOSE ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  tmpfs_revoke_rw_maps_cb ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,int) ; 
 int FUNC6 (struct mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mount*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct mount**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct mount *mp)
{
	int error, flags;
	bool forced;

	forced = (mp->mnt_flag & MNT_FORCE) != 0;
	flags = WRITECLOSE | (forced ? FORCECLOSE : 0);

	if ((error = FUNC9(NULL, &mp, V_WAIT)) != 0)
		return (error);
	error = FUNC8(mp);
	if (error != 0)
		return (error);
	if (!forced && FUNC4(mp)) {
		error = EBUSY;
		goto out;
	}
	FUNC2(mp)->tm_ronly = 1;
	FUNC0(mp);
	mp->mnt_flag |= MNT_RDONLY;
	FUNC1(mp);
	for (;;) {
		FUNC3(mp, tmpfs_revoke_rw_maps_cb, NULL);
		FUNC5(mp, false);
		error = FUNC6(mp, 0, flags, curthread);
		if (error != 0) {
			FUNC2(mp)->tm_ronly = 0;
			FUNC0(mp);
			mp->mnt_flag &= ~MNT_RDONLY;
			FUNC1(mp);
			goto out;
		}
		if (!FUNC4(mp))
			break;
	}
out:
	FUNC7(mp, 0);
	return (error);
}