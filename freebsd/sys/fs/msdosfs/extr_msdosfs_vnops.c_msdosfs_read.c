
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
struct vop_read_args {int a_ioflag; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {TYPE_1__* v_mount; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct msdosfsmount {int pm_bpcluster; scalar_t__ pm_crbomask; struct vnode* pm_devvp; } ;
struct denode {int de_Attributes; scalar_t__ de_FileSize; int de_flag; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_resid; scalar_t__ b_data; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int ATTR_DIRECTORY ;
 int DE_ACCESS ;
 int E2BIG ;
 int EINVAL ;
 int IO_SEQSHIFT ;
 int MNT_NOATIME ;
 int MNT_NOCLUSTERR ;
 int MNT_RDONLY ;
 int NOCRED ;
 struct denode* VTODE (struct vnode*) ;
 int bread (struct vnode*,scalar_t__,int,int ,struct buf**) ;
 int breadn (struct vnode*,scalar_t__,int,scalar_t__*,int*,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int cluster_read (struct vnode*,scalar_t__,scalar_t__,int,int ,scalar_t__,int,int ,struct buf**) ;
 scalar_t__ de_cluster (struct msdosfsmount*,scalar_t__) ;
 scalar_t__ de_cn2off (struct msdosfsmount*,scalar_t__) ;
 int pcbmap (struct denode*,scalar_t__,scalar_t__*,int ,int*) ;
 int vn_io_fault_uiomove (scalar_t__,int,struct uio*) ;

__attribute__((used)) static int
msdosfs_read(struct vop_read_args *ap)
{
 int error = 0;
 int blsize;
 int isadir;
 ssize_t orig_resid;
 u_int n;
 u_long diff;
 u_long on;
 daddr_t lbn;
 daddr_t rablock;
 int rasize;
 int seqcount;
 struct buf *bp;
 struct vnode *vp = ap->a_vp;
 struct denode *dep = VTODE(vp);
 struct msdosfsmount *pmp = dep->de_pmp;
 struct uio *uio = ap->a_uio;




 orig_resid = uio->uio_resid;
 if (orig_resid == 0)
  return (0);
 seqcount = ap->a_ioflag >> IO_SEQSHIFT;

 isadir = dep->de_Attributes & ATTR_DIRECTORY;
 do {
  if (uio->uio_offset >= dep->de_FileSize)
   break;
  lbn = de_cluster(pmp, uio->uio_offset);
  rablock = lbn + 1;
  blsize = pmp->pm_bpcluster;
  on = uio->uio_offset & pmp->pm_crbomask;





  if (isadir) {

   error = pcbmap(dep, lbn, &lbn, 0, &blsize);
   if (error == E2BIG) {
    error = EINVAL;
    break;
   } else if (error)
    break;
   error = bread(pmp->pm_devvp, lbn, blsize, NOCRED, &bp);
  } else if (de_cn2off(pmp, rablock) >= dep->de_FileSize) {
   error = bread(vp, lbn, blsize, NOCRED, &bp);
  } else if ((vp->v_mount->mnt_flag & MNT_NOCLUSTERR) == 0) {
   error = cluster_read(vp, dep->de_FileSize, lbn, blsize,
       NOCRED, on + uio->uio_resid, seqcount, 0, &bp);
  } else if (seqcount > 1) {
   rasize = blsize;
   error = breadn(vp, lbn,
       blsize, &rablock, &rasize, 1, NOCRED, &bp);
  } else {
   error = bread(vp, lbn, blsize, NOCRED, &bp);
  }
  if (error) {
   brelse(bp);
   break;
  }
  diff = pmp->pm_bpcluster - on;
  n = diff > uio->uio_resid ? uio->uio_resid : diff;
  diff = dep->de_FileSize - uio->uio_offset;
  if (diff < n)
   n = diff;
  diff = blsize - bp->b_resid;
  if (diff < n)
   n = diff;
  error = vn_io_fault_uiomove(bp->b_data + on, (int) n, uio);
  brelse(bp);
 } while (error == 0 && uio->uio_resid > 0 && n != 0);
 if (!isadir && (error == 0 || uio->uio_resid != orig_resid) &&
     (vp->v_mount->mnt_flag & (MNT_NOATIME | MNT_RDONLY)) == 0)
  dep->de_flag |= DE_ACCESS;
 return (error);
}
