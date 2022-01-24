#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnode {scalar_t__ v_type; struct mount* v_mount; struct cdev* v_rdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  f_syncwrites; int /*<<< orphan*/  f_asyncwrites; int /*<<< orphan*/  f_syncreads; int /*<<< orphan*/  f_asyncreads; } ;
struct mount {TYPE_3__ mnt_stat; } ;
struct g_vfs_softc {scalar_t__ sc_active; int /*<<< orphan*/  sc_mtx; scalar_t__ sc_orphaned; } ;
struct g_consumer {TYPE_4__* geom; } ;
struct cdev {struct mount* si_mountpt; TYPE_1__* si_devsw; } ;
struct TYPE_6__ {int /*<<< orphan*/  lk_lock; } ;
struct buf {scalar_t__ b_iocmd; scalar_t__ b_bcount; scalar_t__ b_resid; int /*<<< orphan*/  b_ioflags; scalar_t__ b_error; TYPE_2__ b_lock; struct vnode* b_vp; } ;
struct bio {scalar_t__ bio_completed; scalar_t__ bio_error; int /*<<< orphan*/  bio_flags; struct g_consumer* bio_from; struct buf* bio_caller2; } ;
struct TYPE_8__ {struct g_vfs_softc* softc; } ;
struct TYPE_5__ {int d_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 int D_DISK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LK_KERNPROC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ VCHR ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct bio*,char*,scalar_t__) ; 
 int /*<<< orphan*/  g_vfs_destroy ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bio *bip)
{
	struct g_consumer *cp;
	struct g_vfs_softc *sc;
	struct buf *bp;
	int destroy;
	struct mount *mp;
	struct vnode *vp;
	struct cdev *cdevp;

	/*
	 * Collect statistics on synchronous and asynchronous read
	 * and write counts for disks that have associated filesystems.
	 */
	bp = bip->bio_caller2;
	vp = bp->b_vp;
	if (vp != NULL) {
		/*
		 * If not a disk vnode, use its associated mount point
		 * otherwise use the mountpoint associated with the disk.
		 */
		FUNC1(vp);
		if (vp->v_type != VCHR ||
		    (cdevp = vp->v_rdev) == NULL ||
		    cdevp->si_devsw == NULL ||
		    (cdevp->si_devsw->d_flags & D_DISK) == 0)
			mp = vp->v_mount;
		else
			mp = cdevp->si_mountpt;
		if (mp != NULL) {
			if (bp->b_iocmd == BIO_READ) {
				if (FUNC0(bp->b_lock.lk_lock) == LK_KERNPROC)
					mp->mnt_stat.f_asyncreads++;
				else
					mp->mnt_stat.f_syncreads++;
			} else if (bp->b_iocmd == BIO_WRITE) {
				if (FUNC0(bp->b_lock.lk_lock) == LK_KERNPROC)
					mp->mnt_stat.f_asyncwrites++;
				else
					mp->mnt_stat.f_syncwrites++;
			}
		}
		FUNC2(vp);
	}

	cp = bip->bio_from;
	sc = cp->geom->softc;
	if (bip->bio_error)
		FUNC6("g_vfs_done():", bip, "error = %d",
		    bip->bio_error);
	bp->b_error = bip->bio_error;
	bp->b_ioflags = bip->bio_flags;
	if (bip->bio_error)
		bp->b_ioflags |= BIO_ERROR;
	bp->b_resid = bp->b_bcount - bip->bio_completed;
	FUNC4(bip);

	FUNC7(&sc->sc_mtx);
	destroy = ((--sc->sc_active) == 0 && sc->sc_orphaned);
	FUNC8(&sc->sc_mtx);
	if (destroy)
		FUNC5(g_vfs_destroy, cp, M_WAITOK, NULL);

	FUNC3(bp);
}