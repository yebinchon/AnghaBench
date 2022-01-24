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
struct m_ext2fs {unsigned int e2fs_gcount; TYPE_1__* e2fs_gd; } ;
struct TYPE_2__ {int /*<<< orphan*/  ext4bgd_csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_ext2fs*,unsigned int,TYPE_1__*) ; 

void
FUNC1(struct m_ext2fs *fs)
{
	unsigned int i;

	for (i = 0; i < fs->e2fs_gcount; i++)
		    fs->e2fs_gd[i].ext4bgd_csum = 
			FUNC0(fs, i, &fs->e2fs_gd[i]);
}