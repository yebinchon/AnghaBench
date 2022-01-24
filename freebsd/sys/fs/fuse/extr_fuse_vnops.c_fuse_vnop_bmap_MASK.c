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
typedef  int uint64_t ;
struct vop_bmap_args {int a_bn; int* a_bnp; int* a_runp; int* a_runb; struct bufobj** a_bop; struct vnode* a_vp; } ;
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; TYPE_1__* v_mount; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {struct fuse_bmap_out* answ; struct fuse_bmap_in* indata; } ;
struct fuse_data {int max_readahead_blocks; } ;
struct fuse_bmap_out {int block; } ;
struct fuse_bmap_in {int block; int blocksize; } ;
typedef  int off_t ;
typedef  int daddr_t ;
struct TYPE_2__ {int mnt_iosize_max; } ;

/* Variables and functions */
 int ENOSYS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUSE_BMAP ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fuse_dispatcher*) ; 
 scalar_t__ FUNC7 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*,int /*<<< orphan*/ ) ; 
 struct fuse_data* FUNC9 (struct mount*) ; 
 int FUNC10 (struct vnode*) ; 
 scalar_t__ FUNC11 (struct vnode*) ; 
 int FUNC12 (struct vnode*,int*,int /*<<< orphan*/ ,struct thread*) ; 
 struct mount* FUNC13 (struct vnode*) ; 

__attribute__((used)) static int
FUNC14(struct vop_bmap_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct bufobj **bo = ap->a_bop;
	struct thread *td = curthread;
	struct mount *mp;
	struct fuse_dispatcher fdi;
	struct fuse_bmap_in *fbi;
	struct fuse_bmap_out *fbo;
	struct fuse_data *data;
	uint64_t biosize;
	off_t filesize;
	daddr_t lbn = ap->a_bn;
	daddr_t *pbn = ap->a_bnp;
	int *runp = ap->a_runp;
	int *runb = ap->a_runb;
	int error = 0;
	int maxrun;

	if (FUNC11(vp)) {
		return ENXIO;
	}

	mp = FUNC13(vp);
	data = FUNC9(mp);
	biosize = FUNC10(vp);
	maxrun = FUNC1(vp->v_mount->mnt_iosize_max / biosize - 1,
		data->max_readahead_blocks);

	if (bo != NULL)
		*bo = &vp->v_bufobj;

	/*
	 * The FUSE_BMAP operation does not include the runp and runb
	 * variables, so we must guess.  Report nonzero contiguous runs so
	 * cluster_read will combine adjacent reads.  It's worthwhile to reduce
	 * upcalls even if we don't know the true physical layout of the file.
	 * 
	 * FUSE file systems may opt out of read clustering in two ways:
	 * * mounting with -onoclusterr
	 * * Setting max_readahead <= maxbcachebuf during FUSE_INIT
	 */
	if (runb != NULL)
		*runb = FUNC1(lbn, maxrun);
	if (runp != NULL) {
		error = FUNC12(vp, &filesize, td->td_ucred, td);
		if (error == 0)
			*runp = FUNC1(FUNC0(0, filesize / (off_t)biosize - lbn - 1),
				    maxrun);
		else
			*runp = 0;
	}

	if (FUNC7(mp, FUSE_BMAP)) {
		FUNC4(&fdi, sizeof(*fbi));
		FUNC5(&fdi, FUSE_BMAP, vp, td, td->td_ucred);
		fbi = fdi.indata;
		fbi->block = lbn;
		fbi->blocksize = biosize;
		error = FUNC6(&fdi);
		if (error == ENOSYS) {
			FUNC3(&fdi);
			FUNC8(mp, FUSE_BMAP);
			error = 0;
		} else {
			fbo = fdi.answ;
			if (error == 0 && pbn != NULL)
				*pbn = fbo->block;
			FUNC3(&fdi);
			return error;
		}
	}

	/* If the daemon doesn't support BMAP, make up a sensible default */
	if (pbn != NULL)
		*pbn = lbn * FUNC2(biosize);
	return (error);
}