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
typedef  int /*<<< orphan*/  uint64_t ;
struct m_ext2fs {TYPE_1__* e2fs; } ;
struct TYPE_2__ {unsigned long e3fs_first_meta_bg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_INCOMPAT_META_BG ; 
 int FUNC0 (struct m_ext2fs*) ; 
 int /*<<< orphan*/  FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m_ext2fs*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct m_ext2fs*,int) ; 

uint64_t
FUNC4(struct m_ext2fs *fs, int cg)
{
	unsigned long first_meta_bg, metagroup;

	first_meta_bg = fs->e2fs->e3fs_first_meta_bg;
	metagroup = cg / FUNC0(fs);

	if (!FUNC1(fs, EXT2F_INCOMPAT_META_BG) ||
	    metagroup < first_meta_bg)
		return (FUNC3(fs, cg));

	return FUNC2(fs, cg);
}