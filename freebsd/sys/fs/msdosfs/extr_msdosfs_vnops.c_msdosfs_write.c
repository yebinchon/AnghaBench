
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uoff_t ;
typedef scalar_t__ u_long ;
struct vop_write_args {int a_ioflag; struct ucred* a_cred; struct vnode* a_vp; struct uio* a_uio; } ;
struct vnode {int v_type; TYPE_2__* v_mount; } ;
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; int uio_td; } ;
struct ucred {int dummy; } ;
struct msdosfsmount {int pm_crbomask; int pm_bpcluster; } ;
struct denode {scalar_t__ de_FileSize; int de_flag; TYPE_1__* de_fc; int de_StartCluster; int de_dirclust; int de_diroffset; struct msdosfsmount* de_pmp; } ;
struct buf {int b_blkno; int b_lblkno; int b_flags; scalar_t__ b_data; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_4__ {int mnt_flag; } ;
struct TYPE_3__ {scalar_t__ fc_frcn; } ;


 int B_CLUSTEROK ;
 int DE_UPDATE ;
 int EFBIG ;
 int EIO ;
 int EISDIR ;
 int ENOSPC ;
 size_t FC_LASTFC ;
 int IO_APPEND ;
 int IO_SEQSHIFT ;
 int IO_SYNC ;
 int IO_UNIT ;
 int MNT_NOCLUSTERW ;
 scalar_t__ MSDOSFS_FILESIZE_MAX ;
 int NOCRED ;


 struct denode* VTODE (struct vnode*) ;
 int bawrite (struct buf*) ;
 int bdwrite (struct buf*) ;
 int bread (struct vnode*,scalar_t__,int,struct ucred*,struct buf**) ;
 int brelse (struct buf*) ;
 scalar_t__ buf_dirty_count_severe () ;
 int bwrite (struct buf*) ;
 int cluster_write (struct vnode*,struct buf*,int,int,int ) ;
 scalar_t__ de_clcount (struct msdosfsmount*,scalar_t__) ;
 scalar_t__ de_cluster (struct msdosfsmount*,scalar_t__) ;
 int deextend (struct denode*,scalar_t__,struct ucred*) ;
 int detrunc (struct denode*,scalar_t__,int,int ) ;
 int deupdat (struct denode*,int) ;
 int extendfile (struct denode*,scalar_t__,int *,int *,int ) ;
 struct buf* getblk (struct vnode*,scalar_t__,int,int ,int ,int ) ;
 int min (scalar_t__,int) ;
 int panic (char*) ;
 int pcbmap (struct denode*,int,scalar_t__*,int ,int ) ;
 int printf (char*,struct vnode*,struct uio*,int,...) ;
 int vfs_bio_clrbuf (struct buf*) ;
 scalar_t__ vm_page_count_severe () ;
 int vn_io_fault_uiomove (scalar_t__,int,struct uio*) ;
 scalar_t__ vn_rlimit_fsize (struct vnode*,struct uio*,int ) ;
 int vnode_pager_setsize (struct vnode*,int) ;

__attribute__((used)) static int
msdosfs_write(struct vop_write_args *ap)
{
 int n;
 int croffset;
 ssize_t resid;
 u_long osize;
 int error = 0;
 u_long count;
 int seqcount;
 daddr_t bn, lastcn;
 struct buf *bp;
 int ioflag = ap->a_ioflag;
 struct uio *uio = ap->a_uio;
 struct vnode *vp = ap->a_vp;
 struct vnode *thisvp;
 struct denode *dep = VTODE(vp);
 struct msdosfsmount *pmp = dep->de_pmp;
 struct ucred *cred = ap->a_cred;
 switch (vp->v_type) {
 case 128:
  if (ioflag & IO_APPEND)
   uio->uio_offset = dep->de_FileSize;
  thisvp = vp;
  break;
 case 129:
  return EISDIR;
 default:
  panic("msdosfs_write(): bad file type");
 }






 if (uio->uio_resid == 0)
  return (0);





 if ((uoff_t)uio->uio_offset + uio->uio_resid > MSDOSFS_FILESIZE_MAX)
  return (EFBIG);




 if (vn_rlimit_fsize(vp, uio, uio->uio_td))
  return (EFBIG);







 if (uio->uio_offset > dep->de_FileSize) {
  error = deextend(dep, uio->uio_offset, cred);
  if (error)
   return (error);
 }




 resid = uio->uio_resid;
 osize = dep->de_FileSize;





 if (uio->uio_offset + resid > osize) {
  count = de_clcount(pmp, uio->uio_offset + resid) -
   de_clcount(pmp, osize);
  error = extendfile(dep, count, ((void*)0), ((void*)0), 0);
  if (error && (error != ENOSPC || (ioflag & IO_UNIT)))
   goto errexit;
  lastcn = dep->de_fc[FC_LASTFC].fc_frcn;
 } else
  lastcn = de_clcount(pmp, osize) - 1;

 seqcount = ioflag >> IO_SEQSHIFT;
 do {
  if (de_cluster(pmp, uio->uio_offset) > lastcn) {
   error = ENOSPC;
   break;
  }

  croffset = uio->uio_offset & pmp->pm_crbomask;
  n = min(uio->uio_resid, pmp->pm_bpcluster - croffset);
  if (uio->uio_offset + n > dep->de_FileSize) {
   dep->de_FileSize = uio->uio_offset + n;

   vnode_pager_setsize(vp, dep->de_FileSize);
  }

  bn = de_cluster(pmp, uio->uio_offset);
  if ((uio->uio_offset & pmp->pm_crbomask) == 0
      && (de_cluster(pmp, uio->uio_offset + uio->uio_resid)
   > de_cluster(pmp, uio->uio_offset)
   || uio->uio_offset + uio->uio_resid >= dep->de_FileSize)) {





   bp = getblk(thisvp, bn, pmp->pm_bpcluster, 0, 0, 0);






   vfs_bio_clrbuf(bp);




   if (bp->b_blkno == bp->b_lblkno) {
    error = pcbmap(dep, bp->b_lblkno, &bn, 0, 0);
    if (error)
     bp->b_blkno = -1;
    else
     bp->b_blkno = bn;
   }
   if (bp->b_blkno == -1) {
    brelse(bp);
    if (!error)
     error = EIO;
    break;
   }
  } else {



   error = bread(thisvp, bn, pmp->pm_bpcluster, cred, &bp);
   if (error) {
    break;
   }
  }
  error = vn_io_fault_uiomove(bp->b_data + croffset, n, uio);
  if (error) {
   brelse(bp);
   break;
  }


  if ((vp->v_mount->mnt_flag & MNT_NOCLUSTERW) == 0)
   bp->b_flags |= B_CLUSTEROK;
  if (ioflag & IO_SYNC)
   (void)bwrite(bp);
  else if (vm_page_count_severe() || buf_dirty_count_severe())
   bawrite(bp);
  else if (n + croffset == pmp->pm_bpcluster) {
   if ((vp->v_mount->mnt_flag & MNT_NOCLUSTERW) == 0)
    cluster_write(vp, bp, dep->de_FileSize,
        seqcount, 0);
   else
    bawrite(bp);
  } else
   bdwrite(bp);
  dep->de_flag |= DE_UPDATE;
 } while (error == 0 && uio->uio_resid > 0);





errexit:
 if (error) {
  if (ioflag & IO_UNIT) {
   detrunc(dep, osize, ioflag & IO_SYNC, NOCRED);
   uio->uio_offset -= resid - uio->uio_resid;
   uio->uio_resid = resid;
  } else {
   detrunc(dep, dep->de_FileSize, ioflag & IO_SYNC, NOCRED);
   if (uio->uio_resid != resid)
    error = 0;
  }
 } else if (ioflag & IO_SYNC)
  error = deupdat(dep, 1);
 return (error);
}
