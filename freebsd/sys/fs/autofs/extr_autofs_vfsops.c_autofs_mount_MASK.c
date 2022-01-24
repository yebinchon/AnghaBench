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
struct mount {int mnt_flag; int /*<<< orphan*/  mnt_kern_flag; struct autofs_mount* mnt_data; int /*<<< orphan*/  mnt_optnew; } ;
struct autofs_mount {int am_last_fileno; int /*<<< orphan*/  am_root; int /*<<< orphan*/  am_lock; int /*<<< orphan*/  am_prefix; int /*<<< orphan*/  am_options; int /*<<< orphan*/  am_mountpoint; int /*<<< orphan*/  am_from; struct mount* am_mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autofs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_mount*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MNTK_LOOKUP_SHARED ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  M_AUTOFS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct autofs_mount*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  autofs_opts ; 
 int /*<<< orphan*/  FUNC7 (struct autofs_mount*,int /*<<< orphan*/ ) ; 
 struct autofs_mount* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mount*,char*) ; 

__attribute__((used)) static int
FUNC15(struct mount *mp)
{
	struct autofs_mount *amp;
	char *from, *fspath, *options, *prefix;
	int error;

	if (FUNC11(mp->mnt_optnew, autofs_opts))
		return (EINVAL);

	if (mp->mnt_flag & MNT_UPDATE) {
		FUNC5(FUNC4(mp));
		return (0);
	}

	if (FUNC13(mp->mnt_optnew, "from", (void **)&from, NULL))
		return (EINVAL);

	if (FUNC13(mp->mnt_optnew, "fspath", (void **)&fspath, NULL))
		return (EINVAL);

	if (FUNC13(mp->mnt_optnew, "master_options", (void **)&options, NULL))
		return (EINVAL);

	if (FUNC13(mp->mnt_optnew, "master_prefix", (void **)&prefix, NULL))
		return (EINVAL);

	amp = FUNC8(sizeof(*amp), M_AUTOFS, M_WAITOK | M_ZERO);
	mp->mnt_data = amp;
	amp->am_mp = mp;
	FUNC9(amp->am_from, from, sizeof(amp->am_from));
	FUNC9(amp->am_mountpoint, fspath, sizeof(amp->am_mountpoint));
	FUNC9(amp->am_options, options, sizeof(amp->am_options));
	FUNC9(amp->am_prefix, prefix, sizeof(amp->am_prefix));
	FUNC10(&amp->am_lock, "autofslk");
	amp->am_last_fileno = 1;

	FUNC12(mp);

	FUNC2(mp);
	mp->mnt_kern_flag |= MNTK_LOOKUP_SHARED;
	FUNC3(mp);

	FUNC0(amp);
	error = FUNC6(NULL, amp, ".", -1, &amp->am_root);
	if (error != 0) {
		FUNC1(amp);
		FUNC7(amp, M_AUTOFS);
		return (error);
	}
	FUNC1(amp);

	FUNC14(mp, from);

	return (0);
}