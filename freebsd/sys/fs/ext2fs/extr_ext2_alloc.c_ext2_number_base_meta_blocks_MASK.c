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
struct m_ext2fs {TYPE_1__* e2fs; } ;
struct TYPE_2__ {int e3fs_first_meta_bg; scalar_t__ e2fs_reserved_ngdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_INCOMPAT_META_BG ; 
 int FUNC0 (struct m_ext2fs*) ; 
 int /*<<< orphan*/  FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct m_ext2fs*,int) ; 
 scalar_t__ FUNC3 (struct m_ext2fs*,int) ; 

__attribute__((used)) static int
FUNC4(struct m_ext2fs *fs, int cg)
{
	int number;

	number = FUNC2(fs, cg);

	if (!FUNC1(fs, EXT2F_INCOMPAT_META_BG) ||
	    cg < fs->e2fs->e3fs_first_meta_bg * FUNC0(fs)) {
		if (number) {
			number += FUNC3(fs, cg);
			number += fs->e2fs->e2fs_reserved_ngdb;
		}
	} else {
		number += FUNC3(fs, cg);
	}

	return (number);
}