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
typedef  union dinode {int dummy; } dinode ;
struct fs {int fs_bsize; } ;
typedef  int off_t ;

/* Variables and functions */
 int FUNC0 (struct fs*,union dinode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fs*) ; 
 int UFS_NDADDR ; 
 int FUNC2 (struct fs*,int) ; 
 int /*<<< orphan*/  di_size ; 
 int FUNC3 (struct fs*,int) ; 
 int FUNC4 (struct fs*,int) ; 

__attribute__((used)) static int FUNC5(struct fs *super, union dinode *dp)
{
	off_t nblk, sz;

	sz = FUNC0(super, dp, di_size);
#ifdef	COMPAT
	if (lblkno(super,sz) >= UFS_NDADDR) {
		nblk = blkroundup(super,sz);
		if (sz == nblk)
			nblk += super->fs_bsize;
	}

	return sz / 1024;

#else	/* COMPAT */

	if (FUNC4(super,sz) >= UFS_NDADDR) {
		nblk = FUNC2(super,sz);
		sz = FUNC4(super,nblk);
		sz = (sz - UFS_NDADDR + FUNC1(super) - 1) / FUNC1(super);
		while (sz > 0) {
			nblk += sz * super->fs_bsize;
			/* sz - 1 rounded up */
			sz = (sz - 1 + FUNC1(super) - 1) / FUNC1(super);
		}
	} else
		nblk = FUNC3(super,sz);

	return nblk / 512;
#endif	/* COMPAT */
}