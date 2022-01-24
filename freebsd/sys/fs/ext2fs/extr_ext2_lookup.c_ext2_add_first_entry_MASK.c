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
struct vnode {int dummy; } ;
struct uio {int uio_offset; int uio_resid; int uio_iovcnt; struct thread* uio_td; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_rw; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
struct inode {int i_offset; int /*<<< orphan*/  i_flag; int /*<<< orphan*/  i_size; TYPE_1__* i_e2fs; } ;
struct ext2fs_direct_tail {int dummy; } ;
struct ext2fs_direct_2 {int e2d_reclen; int /*<<< orphan*/  e2d_namlen; } ;
struct componentname {int /*<<< orphan*/  cn_cred; } ;
typedef  void* caddr_t ;
struct TYPE_2__ {int e2fs_bsize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_CHANGE ; 
 int /*<<< orphan*/  IO_SYNC ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC3 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ext2fs_direct_2*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct ext2fs_direct_2*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(struct vnode *dvp, struct ext2fs_direct_2 *entry,
    struct componentname *cnp)
{
	struct inode *dp;
	struct iovec aiov;
	struct uio auio;
	char* buf = NULL;
	int dirblksize, error;

	dp = FUNC4(dvp);
	dirblksize = dp->i_e2fs->e2fs_bsize;

	if (dp->i_offset & (dirblksize - 1))
		FUNC10("ext2_add_first_entry: bad directory offset");

	if (FUNC2(dp->i_e2fs,
	    EXT2F_ROCOMPAT_METADATA_CKSUM)) {
		entry->e2d_reclen = dirblksize - sizeof(struct ext2fs_direct_tail);
		buf = FUNC8(dirblksize, M_TEMP, M_WAITOK);
		if (!buf) {
			error = ENOMEM;
			goto out;
		}
		FUNC9(buf, entry, FUNC1(entry->e2d_namlen));
		FUNC6(FUNC0(buf, dirblksize));
		FUNC5(dp, (struct ext2fs_direct_2 *)buf);

		auio.uio_offset = dp->i_offset;
		auio.uio_resid = dirblksize;
		aiov.iov_len = auio.uio_resid;
		aiov.iov_base = (caddr_t)buf;
	} else {
		entry->e2d_reclen = dirblksize;
		auio.uio_offset = dp->i_offset;
		auio.uio_resid = FUNC1(entry->e2d_namlen);
		aiov.iov_len = auio.uio_resid;
		aiov.iov_base = (caddr_t)entry;
	}

	auio.uio_iov = &aiov;
	auio.uio_iovcnt = 1;
	auio.uio_rw = UIO_WRITE;
	auio.uio_segflg = UIO_SYSSPACE;
	auio.uio_td = (struct thread *)0;
	error = FUNC3(dvp, &auio, IO_SYNC, cnp->cn_cred);
	if (error)
		goto out;

	dp->i_size = FUNC11(dp->i_size, dirblksize);
	dp->i_flag |= IN_CHANGE;

out:
	FUNC7(buf, M_TEMP);
	return (error);

}