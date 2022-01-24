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
struct uio {scalar_t__ uio_rw; scalar_t__ uio_segflg; scalar_t__ uio_resid; int uio_iovcnt; size_t uio_offset; TYPE_1__* uio_iov; } ;
struct ufsmount {struct fs* um_fs; struct vnode* um_devvp; } ;
struct mount {int dummy; } ;
struct fs {size_t fs_bsize; } ;
struct cdev {int dummy; } ;
struct buf {int b_flags; int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {size_t iov_len; char* iov_base; } ;

/* Variables and functions */
 int B_INVAL ; 
 int B_NOCACHE ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  NOCRED ; 
 scalar_t__ UIO_READ ; 
 scalar_t__ UIO_USERSPACE ; 
 scalar_t__ UIO_WRITE ; 
 struct ufsmount* FUNC1 (struct mount*) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int FUNC5 (struct buf*) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC8 (void**) ; 
 int /*<<< orphan*/  ffs_susp_lock ; 
 scalar_t__ FUNC9 (struct mount*) ; 
 scalar_t__ FUNC10 (struct fs*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct cdev *dev, struct uio *uio, int ioflag)
{
	int error, i;
	struct vnode *devvp;
	struct mount *mp;
	struct ufsmount *ump;
	struct buf *bp;
	void *base;
	size_t len;
	ssize_t cnt;
	struct fs *fs;

	FUNC11(&ffs_susp_lock);

	error = FUNC8((void **)&mp);
	if (error != 0) {
		FUNC12(&ffs_susp_lock);
		return (ENXIO);
	}

	ump = FUNC1(mp);
	devvp = ump->um_devvp;
	fs = ump->um_fs;

	if (FUNC9(mp) == 0) {
		FUNC12(&ffs_susp_lock);
		return (ENXIO);
	}

	FUNC0(uio->uio_rw == UIO_READ || uio->uio_rw == UIO_WRITE,
	    ("neither UIO_READ or UIO_WRITE"));
	FUNC0(uio->uio_segflg == UIO_USERSPACE,
	    ("uio->uio_segflg != UIO_USERSPACE"));

	cnt = uio->uio_resid;

	for (i = 0; i < uio->uio_iovcnt; i++) {
		while (uio->uio_iov[i].iov_len) {
			base = uio->uio_iov[i].iov_base;
			len = uio->uio_iov[i].iov_len;
			if (len > fs->fs_bsize)
				len = fs->fs_bsize;
			if (FUNC10(fs, uio->uio_offset) != 0 ||
			    FUNC10(fs, len) != 0) {
				error = EINVAL;
				goto out;
			}
			error = FUNC2(devvp, FUNC4(uio->uio_offset), len,
			    NOCRED, &bp);
			if (error != 0)
				goto out;
			if (uio->uio_rw == UIO_WRITE) {
				error = FUNC6(base, bp->b_data, len);
				if (error != 0) {
					bp->b_flags |= B_INVAL | B_NOCACHE;
					FUNC3(bp);
					goto out;
				}
				error = FUNC5(bp);
				if (error != 0)
					goto out;
			} else {
				error = FUNC7(bp->b_data, base, len);
				FUNC3(bp);
				if (error != 0)
					goto out;
			}
			uio->uio_iov[i].iov_base =
			    (char *)uio->uio_iov[i].iov_base + len;
			uio->uio_iov[i].iov_len -= len;
			uio->uio_resid -= len;
			uio->uio_offset += len;
		}
	}

out:
	FUNC12(&ffs_susp_lock);

	if (uio->uio_resid < cnt)
		return (0);

	return (error);
}