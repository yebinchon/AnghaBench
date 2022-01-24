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
struct cdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ ext4bgd_csum; } ;

/* Variables and functions */
 int EIO ; 
 char* FUNC0 (struct cdev*) ; 
 int FUNC1 (struct m_ext2fs*,unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,scalar_t__,int) ; 

int
FUNC3(struct m_ext2fs *fs, struct cdev *dev)
{
	unsigned int i;
	int error = 0;

	for (i = 0; i < fs->e2fs_gcount; i++) {
		if (fs->e2fs_gd[i].ext4bgd_csum !=
		    FUNC1(fs, i, &fs->e2fs_gd[i])) {
			FUNC2(
"WARNING: mount of %s denied due bad gd=%d csum=0x%x, expected=0x%x - run fsck\n",
			    FUNC0(dev), i, fs->e2fs_gd[i].ext4bgd_csum,
			    FUNC1(fs, i, &fs->e2fs_gd[i]));
			error = EIO;
			break;
		}
	}

	return (error);
}