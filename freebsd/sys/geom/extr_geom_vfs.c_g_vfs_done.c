
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; struct mount* v_mount; struct cdev* v_rdev; } ;
struct TYPE_7__ {int f_syncwrites; int f_asyncwrites; int f_syncreads; int f_asyncreads; } ;
struct mount {TYPE_3__ mnt_stat; } ;
struct g_vfs_softc {scalar_t__ sc_active; int sc_mtx; scalar_t__ sc_orphaned; } ;
struct g_consumer {TYPE_4__* geom; } ;
struct cdev {struct mount* si_mountpt; TYPE_1__* si_devsw; } ;
struct TYPE_6__ {int lk_lock; } ;
struct buf {scalar_t__ b_iocmd; scalar_t__ b_bcount; scalar_t__ b_resid; int b_ioflags; scalar_t__ b_error; TYPE_2__ b_lock; struct vnode* b_vp; } ;
struct bio {scalar_t__ bio_completed; scalar_t__ bio_error; int bio_flags; struct g_consumer* bio_from; struct buf* bio_caller2; } ;
struct TYPE_8__ {struct g_vfs_softc* softc; } ;
struct TYPE_5__ {int d_flags; } ;


 int BIO_ERROR ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int D_DISK ;
 scalar_t__ LK_HOLDER (int ) ;
 scalar_t__ LK_KERNPROC ;
 int M_WAITOK ;
 scalar_t__ VCHR ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int bufdone (struct buf*) ;
 int g_destroy_bio (struct bio*) ;
 int g_post_event (int ,struct g_consumer*,int ,int *) ;
 int g_print_bio (char*,struct bio*,char*,scalar_t__) ;
 int g_vfs_destroy ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_vfs_done(struct bio *bip)
{
 struct g_consumer *cp;
 struct g_vfs_softc *sc;
 struct buf *bp;
 int destroy;
 struct mount *mp;
 struct vnode *vp;
 struct cdev *cdevp;





 bp = bip->bio_caller2;
 vp = bp->b_vp;
 if (vp != ((void*)0)) {




  VI_LOCK(vp);
  if (vp->v_type != VCHR ||
      (cdevp = vp->v_rdev) == ((void*)0) ||
      cdevp->si_devsw == ((void*)0) ||
      (cdevp->si_devsw->d_flags & D_DISK) == 0)
   mp = vp->v_mount;
  else
   mp = cdevp->si_mountpt;
  if (mp != ((void*)0)) {
   if (bp->b_iocmd == BIO_READ) {
    if (LK_HOLDER(bp->b_lock.lk_lock) == LK_KERNPROC)
     mp->mnt_stat.f_asyncreads++;
    else
     mp->mnt_stat.f_syncreads++;
   } else if (bp->b_iocmd == BIO_WRITE) {
    if (LK_HOLDER(bp->b_lock.lk_lock) == LK_KERNPROC)
     mp->mnt_stat.f_asyncwrites++;
    else
     mp->mnt_stat.f_syncwrites++;
   }
  }
  VI_UNLOCK(vp);
 }

 cp = bip->bio_from;
 sc = cp->geom->softc;
 if (bip->bio_error)
  g_print_bio("g_vfs_done():", bip, "error = %d",
      bip->bio_error);
 bp->b_error = bip->bio_error;
 bp->b_ioflags = bip->bio_flags;
 if (bip->bio_error)
  bp->b_ioflags |= BIO_ERROR;
 bp->b_resid = bp->b_bcount - bip->bio_completed;
 g_destroy_bio(bip);

 mtx_lock(&sc->sc_mtx);
 destroy = ((--sc->sc_active) == 0 && sc->sc_orphaned);
 mtx_unlock(&sc->sc_mtx);
 if (destroy)
  g_post_event(g_vfs_destroy, cp, M_WAITOK, ((void*)0));

 bufdone(bp);
}
