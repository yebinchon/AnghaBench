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
typedef  void* uint32_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct uio {scalar_t__ uio_resid; int uio_offset; int /*<<< orphan*/  uio_td; } ;
struct ucred {int dummy; } ;
struct fuse_write_out {int size; } ;
struct fuse_write_in {int offset; size_t size; void* write_flags; int /*<<< orphan*/  fh; int /*<<< orphan*/  flags; } ;
struct fuse_vnode_data {int /*<<< orphan*/  flag; } ;
struct fuse_filehandle {int fuse_open_flags; int /*<<< orphan*/  fh_id; int /*<<< orphan*/  fufh_type; } ;
struct fuse_dispatcher {size_t iosize; struct fuse_write_in* indata; scalar_t__ answ; } ;
struct fuse_data {int /*<<< orphan*/  max_write; } ;
typedef  int off_t ;

/* Variables and functions */
 int EFBIG ; 
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FN_SIZECHANGE ; 
 int FOPEN_DIRECT_IO ; 
 size_t FUSE_COMPAT_WRITE_IN_SIZE ; 
 int /*<<< orphan*/  FUSE_WRITE ; 
 void* FUSE_WRITE_CACHE ; 
 int IO_APPEND ; 
 int IO_DIRECT ; 
 size_t FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct fuse_vnode_data* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_dispatcher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,struct ucred*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,struct ucred*) ; 
 int FUNC7 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct fuse_data* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct fuse_data*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct uio*,int) ; 
 int FUNC18 (void*,size_t,struct uio*) ; 
 scalar_t__ FUNC19 (struct vnode*,struct uio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*) ; 

__attribute__((used)) static int
FUNC21(struct vnode *vp, struct uio *uio,
    struct ucred *cred, struct fuse_filehandle *fufh, off_t filesize,
    int ioflag, bool pages)
{
	struct fuse_vnode_data *fvdat = FUNC2(vp);
	struct fuse_data *data;
	struct fuse_write_in *fwi;
	struct fuse_write_out *fwo;
	struct fuse_dispatcher fdi;
	size_t chunksize;
	void *fwi_data;
	off_t as_written_offset;
	int diff;
	int err = 0;
	bool direct_io = fufh->fuse_open_flags & FOPEN_DIRECT_IO;
	bool wrote_anything = false;
	uint32_t write_flags;

	data = FUNC11(vp->v_mount);

	/* 
	 * Don't set FUSE_WRITE_LOCKOWNER in write_flags.  It can't be set
	 * accurately when using POSIX AIO, libfuse doesn't use it, and I'm not
	 * aware of any file systems that do.  It was an attempt to add
	 * Linux-style mandatory locking to the FUSE protocol, but mandatory
	 * locking is deprecated even on Linux.  See Linux commit
	 * f33321141b273d60cbb3a8f56a5489baad82ba5e .
	 */
	/*
	 * Set FUSE_WRITE_CACHE whenever we don't know the uid, gid, and/or pid
	 * that originated a write.  For example when writing from the
	 * writeback cache.  I don't know of a single file system that cares,
	 * but the protocol says we're supposed to do this.
	 */
	write_flags = !pages && (
		(ioflag & IO_DIRECT) ||
		!FUNC8(FUNC20(vp)) ||
		!FUNC9(FUNC20(vp))) ? 0 : FUSE_WRITE_CACHE;

	if (uio->uio_resid == 0)
		return (0);

	if (ioflag & IO_APPEND)
		FUNC17(uio, filesize);

	if (FUNC19(vp, uio, uio->uio_td))
		return (EFBIG);

	FUNC4(&fdi, 0);

	while (uio->uio_resid > 0) {
		size_t sizeof_fwi;

		if (FUNC12(data, 7, 9)) {
			sizeof_fwi = sizeof(*fwi);
		} else {
			sizeof_fwi = FUSE_COMPAT_WRITE_IN_SIZE;
		}

		chunksize = FUNC0(uio->uio_resid, data->max_write);

		fdi.iosize = sizeof_fwi + chunksize;
		FUNC5(&fdi, FUSE_WRITE, vp, uio->uio_td, cred);

		fwi = fdi.indata;
		fwi->fh = fufh->fh_id;
		fwi->offset = uio->uio_offset;
		fwi->size = chunksize;
		fwi->write_flags = write_flags;
		if (FUNC12(data, 7, 9)) {
			fwi->flags = FUNC10(fufh->fufh_type);
		}
		fwi_data = (char *)fdi.indata + sizeof_fwi;

		if ((err = FUNC18(fwi_data, chunksize, uio)))
			break;

retry:
		err = FUNC7(&fdi);
		if (err == ERESTART || err == EINTR || err == EWOULDBLOCK) {
			/*
			 * Rewind the uio so dofilewrite will know it's
			 * incomplete
			 */
			uio->uio_resid += fwi->size;
			uio->uio_offset -= fwi->size;
			/* 
			 * Change ERESTART into EINTR because we can't rewind
			 * uio->uio_iov.  Basically, once uiomove(9) has been
			 * called, it's impossible to restart a syscall.
			 */
			if (err == ERESTART)
				err = EINTR;
			break;
		} else if (err) {
			break;
		} else {
			wrote_anything = true;
		}

		fwo = ((struct fuse_write_out *)fdi.answ);

		/* Adjust the uio in the case of short writes */
		diff = fwi->size - fwo->size;
		as_written_offset = uio->uio_offset - diff;

		if (as_written_offset - diff > filesize)
			FUNC13(vp, as_written_offset);
		if (as_written_offset - diff >= filesize)
			fvdat->flag &= ~FN_SIZECHANGE;

		if (diff < 0) {
			FUNC16("WARNING: misbehaving FUSE filesystem "
				"wrote more data than we provided it\n");
			err = EINVAL;
			break;
		} else if (diff > 0) {
			/* Short write */
			if (!direct_io) {
				FUNC16("WARNING: misbehaving FUSE filesystem: "
					"short writes are only allowed with "
					"direct_io\n");
			}
			if (ioflag & IO_DIRECT) {
				/* Return early */
				uio->uio_resid += diff;
				uio->uio_offset -= diff;
				break;
			} else {
				/* Resend the unwritten portion of data */
				fdi.iosize = sizeof_fwi + diff;
				/* Refresh fdi without clearing data buffer */
				FUNC6(&fdi, FUSE_WRITE, vp,
					uio->uio_td, cred);
				fwi = fdi.indata;
				FUNC1(fwi == fdi.indata, "FUSE dispatcher "
					"reallocated despite no increase in "
					"size?");
				void *src = (char*)fwi_data + fwo->size;
				FUNC15(fwi_data, src, diff);
				fwi->fh = fufh->fh_id;
				fwi->offset = as_written_offset;
				fwi->size = diff;
				fwi->write_flags = write_flags;
				goto retry;
			}
		}
	}

	FUNC3(&fdi);

	if (wrote_anything)
		FUNC14(vp);

	return (err);
}