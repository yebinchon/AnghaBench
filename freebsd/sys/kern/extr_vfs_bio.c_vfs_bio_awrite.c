
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bufobj {int dummy; } ;
struct vnode {scalar_t__ v_type; TYPE_2__* v_mount; struct bufobj v_bufobj; } ;
struct buf {int b_lblkno; scalar_t__ b_data; int b_flags; int b_bufsize; scalar_t__ b_blkno; struct vnode* b_vp; } ;
typedef int daddr_t ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 int BO_RLOCK (struct bufobj*) ;
 int BO_RUNLOCK (struct bufobj*) ;
 int BUF_UNLOCK (struct buf*) ;
 int B_ASYNC ;
 int B_CLUSTEROK ;
 int B_INVAL ;
 int DEV_BSHIFT ;
 int GB_UNMAPPED ;
 int MAXPHYS ;
 scalar_t__ VREG ;
 int bremfree (struct buf*) ;
 int bwrite (struct buf*) ;
 int cluster_wbuild (struct vnode*,int,int,int,int) ;
 scalar_t__ unmapped_buf ;
 scalar_t__ vfs_bio_clcheck (struct vnode*,int,int,scalar_t__) ;

int
vfs_bio_awrite(struct buf *bp)
{
 struct bufobj *bo;
 int i;
 int j;
 daddr_t lblkno = bp->b_lblkno;
 struct vnode *vp = bp->b_vp;
 int ncl;
 int nwritten;
 int size;
 int maxcl;
 int gbflags;

 bo = &vp->v_bufobj;
 gbflags = (bp->b_data == unmapped_buf) ? GB_UNMAPPED : 0;





 if ((vp->v_type == VREG) &&
     (vp->v_mount != 0) &&
     (bp->b_flags & (B_CLUSTEROK | B_INVAL)) == B_CLUSTEROK) {

  size = vp->v_mount->mnt_stat.f_iosize;
  maxcl = MAXPHYS / size;

  BO_RLOCK(bo);
  for (i = 1; i < maxcl; i++)
   if (vfs_bio_clcheck(vp, size, lblkno + i,
       bp->b_blkno + ((i * size) >> DEV_BSHIFT)) == 0)
    break;

  for (j = 1; i + j <= maxcl && j <= lblkno; j++)
   if (vfs_bio_clcheck(vp, size, lblkno - j,
       bp->b_blkno - ((j * size) >> DEV_BSHIFT)) == 0)
    break;
  BO_RUNLOCK(bo);
  --j;
  ncl = i + j;



  if (ncl != 1) {
   BUF_UNLOCK(bp);
   nwritten = cluster_wbuild(vp, size, lblkno - j, ncl,
       gbflags);
   return (nwritten);
  }
 }
 bremfree(bp);
 bp->b_flags |= B_ASYNC;





 nwritten = bp->b_bufsize;
 (void) bwrite(bp);

 return (nwritten);
}
