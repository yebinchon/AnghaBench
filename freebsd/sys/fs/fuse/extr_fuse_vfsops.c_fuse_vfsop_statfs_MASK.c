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
struct statfs {int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_namemax; int /*<<< orphan*/  f_ffree; int /*<<< orphan*/  f_files; int /*<<< orphan*/  f_bavail; int /*<<< orphan*/  f_bfree; int /*<<< orphan*/  f_blocks; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  frsize; int /*<<< orphan*/  namelen; int /*<<< orphan*/  ffree; int /*<<< orphan*/  files; int /*<<< orphan*/  bavail; int /*<<< orphan*/  bfree; int /*<<< orphan*/  blocks; } ;
struct fuse_statfs_out {TYPE_1__ st; } ;
struct fuse_dispatcher {struct fuse_statfs_out* answ; } ;
struct fuse_data {int dataflags; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int FSESS_INITED ; 
 int /*<<< orphan*/  FUSE_ROOT_ID ; 
 int /*<<< orphan*/  FUSE_STATFS ; 
 int /*<<< orphan*/  S_BLKSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fuse_dispatcher*) ; 
 struct fuse_data* FUNC4 (struct mount*) ; 

__attribute__((used)) static int
FUNC5(struct mount *mp, struct statfs *sbp)
{
	struct fuse_dispatcher fdi;
	int err = 0;

	struct fuse_statfs_out *fsfo;
	struct fuse_data *data;

	data = FUNC4(mp);

	if (!(data->dataflags & FSESS_INITED))
		goto fake;

	FUNC1(&fdi, 0);
	FUNC2(&fdi, FUSE_STATFS, mp, FUSE_ROOT_ID, NULL, NULL);
	err = FUNC3(&fdi);
	if (err) {
		FUNC0(&fdi);
		if (err == ENOTCONN) {
			/*
	                 * We want to seem a legitimate fs even if the daemon
	                 * is stiff dead... (so that, eg., we can still do path
	                 * based unmounting after the daemon dies).
	                 */
			goto fake;
		}
		return err;
	}
	fsfo = fdi.answ;

	sbp->f_blocks = fsfo->st.blocks;
	sbp->f_bfree = fsfo->st.bfree;
	sbp->f_bavail = fsfo->st.bavail;
	sbp->f_files = fsfo->st.files;
	sbp->f_ffree = fsfo->st.ffree;	/* cast from uint64_t to int64_t */
	sbp->f_namemax = fsfo->st.namelen;
	sbp->f_bsize = fsfo->st.frsize;	/* cast from uint32_t to uint64_t */

	FUNC0(&fdi);
	return 0;

fake:
	sbp->f_blocks = 0;
	sbp->f_bfree = 0;
	sbp->f_bavail = 0;
	sbp->f_files = 0;
	sbp->f_ffree = 0;
	sbp->f_namemax = 0;
	sbp->f_bsize = S_BLKSIZE;

	return 0;
}