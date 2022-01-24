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
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
struct fs {scalar_t__ fs_magic; scalar_t__ fs_cgsize; scalar_t__ fs_fshift; size_t fs_ipg; } ;
struct cg {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  size_t ino_t ;
typedef  struct cg* caddr_t ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 size_t FUNC0 (struct fs*) ; 
 scalar_t__ FUNC1 (struct fs*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs2_dinode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cg*) ; 
 int /*<<< orphan*/  FUNC4 (struct cg*) ; 
 scalar_t__ FUNC5 (struct fs*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct cg*) ; 
 int FUNC9 (struct fs*,size_t) ; 
 scalar_t__ FUNC10 (struct fs*,size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC12 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct cg* FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int,struct cg*,scalar_t__) ; 
 size_t FUNC15 (size_t,size_t) ; 

__attribute__((used)) static union dinode *
FUNC16(int fd, struct fs *super, ino_t ino)
{
	static caddr_t ipbuf;
	static struct cg *cgp;
	static ino_t last;
	static int cg;
	struct ufs2_dinode *di2;

	if (fd < 0) {		/* flush cache */
		if (ipbuf) {
			FUNC8(ipbuf);
			ipbuf = 0;
			if (super != NULL && super->fs_magic == FS_UFS2_MAGIC) {
				FUNC8(cgp);
				cgp = 0;
			}
		}
		return 0;
	}

	if (!ipbuf || ino < last || ino >= last + FUNC0(super)) {
		if (super->fs_magic == FS_UFS2_MAGIC &&
		    (!cgp || cg != FUNC9(super, ino))) {
			cg = FUNC9(super, ino);
			if (!cgp && !(cgp = FUNC13(super->fs_cgsize)))
				FUNC7(1, "allocate cg");
			if (FUNC12(fd, (off_t)FUNC5(super, cg) << super->fs_fshift, 0) < 0)
				FUNC6(1, "lseek cg");
			if (FUNC14(fd, cgp, super->fs_cgsize) != super->fs_cgsize)
				FUNC6(1, "read cg");
			if (!FUNC3(cgp))
				FUNC7(1, "cg has bad magic");
		}
		if (!ipbuf
		    && !(ipbuf = FUNC13(FUNC1(super))))
			FUNC7(1, "allocate inodes");
		last = FUNC15(ino, FUNC0(super));
		if (FUNC12(fd, (off_t)FUNC10(super, last) << super->fs_fshift, 0) < (off_t)0
		    || FUNC14(fd, ipbuf, FUNC1(super)) != (ssize_t)FUNC1(super))
			FUNC6(1, "read inodes");
	}

	if (super->fs_magic == FS_UFS1_MAGIC)
		return ((union dinode *)
		    &((struct ufs1_dinode *)ipbuf)[ino % FUNC0(super)]);
	di2 = &((struct ufs2_dinode *)ipbuf)[ino % FUNC0(super)];
	/* If the inode is unused, it might be unallocated too, so zero it. */
	if (FUNC11(FUNC4(cgp), ino % super->fs_ipg))
		FUNC2(di2, sizeof (*di2));
	return ((union dinode *)di2);
}