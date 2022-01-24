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
struct ufsmount {struct fs* um_fs; } ;
struct mount {int dummy; } ;
struct fs {int fs_flags; } ;

/* Variables and functions */
 int FS_NEEDSFSCK ; 
 int FS_UNCLEAN ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 struct ufsmount* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufsmount*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct mount *mp)
{
	struct ufsmount *ump;
	struct fs *fs;
	int flags;

	ump = FUNC0(mp);
	fs = ump->um_fs;

	flags = fs->fs_flags;
	fs->fs_flags &= ~(FS_UNCLEAN | FS_NEEDSFSCK);
	FUNC1(ump, MNT_WAIT, 1);
	fs->fs_flags = flags;

	return (0);
}