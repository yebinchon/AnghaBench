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
struct m_ext2fs {scalar_t__ e2fs_csum_seed; TYPE_1__* e2fs; } ;
struct TYPE_2__ {int /*<<< orphan*/  e2fs_uuid; scalar_t__ e4fs_chksum_seed; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_INCOMPAT_CSUM_SEED ; 
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 scalar_t__ FUNC0 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct m_ext2fs *fs)
{

	if (FUNC0(fs, EXT2F_INCOMPAT_CSUM_SEED))
		fs->e2fs_csum_seed = fs->e2fs->e4fs_chksum_seed;
	else if (FUNC1(fs, EXT2F_ROCOMPAT_METADATA_CKSUM)) {
		fs->e2fs_csum_seed = FUNC2(~0, fs->e2fs->e2fs_uuid,
		    sizeof(fs->e2fs->e2fs_uuid));
	}
	else
		fs->e2fs_csum_seed = 0;
}