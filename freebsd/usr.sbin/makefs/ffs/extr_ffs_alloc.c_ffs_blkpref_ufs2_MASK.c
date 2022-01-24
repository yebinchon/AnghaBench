#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct inode {int /*<<< orphan*/  i_number; struct fs* i_fs; } ;
struct TYPE_4__ {int cs_nbfree; } ;
struct fs {int fs_maxbpg; int fs_fpg; int fs_frag; int fs_ncg; TYPE_2__ (* fs_cs ) (struct fs*,int) ;TYPE_1__ fs_cstotal; } ;
typedef  scalar_t__ int64_t ;
typedef  int daddr_t ;
struct TYPE_5__ {int cs_nbfree; } ;

/* Variables and functions */
 int FUNC0 (struct fs*) ; 
 int /*<<< orphan*/  FUNC1 (struct fs*) ; 
 int UFS_NDADDR ; 
 int FUNC2 (struct fs*,int) ; 
 int FUNC3 (struct fs*,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC4 (struct fs*,int) ; 
 TYPE_2__ FUNC5 (struct fs*,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

daddr_t
FUNC7(struct inode *ip, daddr_t lbn, int indx, int64_t *bap)
{
	struct fs *fs;
	u_int cg, startcg;
	int avgbfree;

	fs = ip->i_fs;
	if (indx % fs->fs_maxbpg == 0 || bap[indx - 1] == 0) {
		if (lbn < UFS_NDADDR + FUNC0(fs)) {
			cg = FUNC3(fs, ip->i_number);
			return (fs->fs_fpg * cg + fs->fs_frag);
		}
		/*
		 * Find a cylinder with greater than average number of
		 * unused data blocks.
		 */
		if (indx == 0 || bap[indx - 1] == 0)
			startcg =
			    FUNC3(fs, ip->i_number) + lbn / fs->fs_maxbpg;
		else
			startcg = FUNC2(fs,
				FUNC6(bap[indx - 1], FUNC1(fs)) + 1);
		startcg %= fs->fs_ncg;
		avgbfree = fs->fs_cstotal.cs_nbfree / fs->fs_ncg;
		for (cg = startcg; cg < fs->fs_ncg; cg++)
			if (fs->fs_cs(fs, cg).cs_nbfree >= avgbfree) {
				return (fs->fs_fpg * cg + fs->fs_frag);
			}
		for (cg = 0; cg < startcg; cg++)
			if (fs->fs_cs(fs, cg).cs_nbfree >= avgbfree) {
				return (fs->fs_fpg * cg + fs->fs_frag);
			}
		return (0);
	}
	/*
	 * We just always try to lay things out contiguously.
	 */
	return FUNC6(bap[indx - 1], FUNC1(fs)) + fs->fs_frag;
}