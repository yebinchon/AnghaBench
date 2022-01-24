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
typedef  int uint64_t ;
struct m_ext2fs {int e2fs_gcount; TYPE_1__* e2fs; } ;
struct TYPE_2__ {int e3fs_first_meta_bg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_INCOMPAT_META_BG ; 
 int FUNC0 (struct m_ext2fs*) ; 
 scalar_t__ FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m_ext2fs*,int) ; 

__attribute__((used)) static uint64_t
FUNC3(struct m_ext2fs *fs, int cg)
{

	if (!FUNC2(fs, cg))
		return (0);

	if (FUNC1(fs, EXT2F_INCOMPAT_META_BG))
		return (fs->e2fs->e3fs_first_meta_bg);

	return ((fs->e2fs_gcount + FUNC0(fs) - 1) /
	    FUNC0(fs));
}