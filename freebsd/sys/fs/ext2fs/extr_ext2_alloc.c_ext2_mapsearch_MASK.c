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
struct m_ext2fs {int /*<<< orphan*/  e2fs_fsmnt; TYPE_1__* e2fs; } ;
typedef  scalar_t__ daddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  e2fs_fpg; } ;

/* Variables and functions */
 int NBBY ; 
 int FUNC0 (struct m_ext2fs*,scalar_t__) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static daddr_t
FUNC5(struct m_ext2fs *fs, char *bbp, daddr_t bpref)
{
	char *loc;
	int start, len;

	/*
	 * find the fragment by searching through the free block
	 * map for an appropriate bit pattern
	 */
	if (bpref)
		start = FUNC0(fs, bpref) / NBBY;
	else
		start = 0;
	len = FUNC2(fs->e2fs->e2fs_fpg, NBBY) - start;
	loc = FUNC3(&bbp[start], 0xff, len);
	if (loc == NULL) {
		len = start + 1;
		start = 0;
		loc = FUNC3(&bbp[start], 0xff, len);
		if (loc == NULL) {
			FUNC4("ext2_mapsearch: map corrupted: start=%d, len=%d, fs=%s",
			    start, len, fs->e2fs_fsmnt);
			/* NOTREACHED */
		}
	}
	return ((loc - bbp) * NBBY + FUNC1(~*loc) - 1);
}