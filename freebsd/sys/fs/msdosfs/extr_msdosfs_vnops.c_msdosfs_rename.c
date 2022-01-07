
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_char ;
struct vop_rename_args {struct vnode* a_fvp; struct componentname* a_fcnp; struct componentname* a_tcnp; struct vnode* a_tvp; struct vnode* a_fdvp; struct vnode* a_tdvp; } ;
struct vnode {scalar_t__ v_mount; } ;
struct msdosfsmount {scalar_t__ pm_crbomask; scalar_t__ pm_rootdirblk; int pm_bpcluster; int pm_devvp; } ;
struct direntry {int deHighClust; int deStartCluster; } ;
struct denode {int de_Attributes; int de_flag; scalar_t__ de_fndoffset; scalar_t__ de_StartCluster; scalar_t__ de_dirclust; scalar_t__ de_diroffset; int de_refcnt; int * de_Name; int de_fndcnt; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; int cn_thread; int cn_cred; } ;
struct buf {scalar_t__ b_data; } ;
typedef int daddr_t ;


 int ATTR_DIRECTORY ;
 int DE_RENAME ;
 scalar_t__ DOINGASYNC (struct vnode*) ;
 int EINVAL ;
 int EISDIR ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int EXDEV ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 int HASBUF ;
 int ISDOTDOT ;
 int LK_EXCLUSIVE ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int MODMASK ;
 scalar_t__ MSDOSFSROOT ;
 int NOCRED ;
 int SAVESTART ;
 struct msdosfsmount* VFSTOMSDOSFS (scalar_t__) ;
 int VOP_ACCESS (struct vnode*,int ,int ,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct denode* VTODE (struct vnode*) ;
 int VWRITE ;
 int bdwrite (struct buf*) ;
 int bread (int ,int ,int ,int ,struct buf**) ;
 int bwrite (struct buf*) ;
 int cache_purge (struct vnode*) ;
 int cntobn (struct msdosfsmount*,scalar_t__) ;
 int createde (struct denode*,struct denode*,struct denode**,struct componentname*) ;
 int de_cluster (struct msdosfsmount*,scalar_t__) ;
 int doscheckpath (struct denode*,struct denode*) ;
 int dosdirempty (struct denode*) ;
 int memcpy (int *,int *,int) ;
 int panic (char*) ;
 int pcbmap (struct denode*,int ,int ,scalar_t__*,int ) ;
 int putushort (int ,scalar_t__) ;
 int reinsert (struct denode*) ;
 scalar_t__ relookup (struct vnode*,struct vnode**,struct componentname*) ;
 int removede (struct denode*,struct denode*) ;
 int uniqdosname (struct denode*,struct componentname*,int *) ;
 int vn_lock (struct vnode*,int ) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
msdosfs_rename(struct vop_rename_args *ap)
{
 struct vnode *tdvp = ap->a_tdvp;
 struct vnode *fvp = ap->a_fvp;
 struct vnode *fdvp = ap->a_fdvp;
 struct vnode *tvp = ap->a_tvp;
 struct componentname *tcnp = ap->a_tcnp;
 struct componentname *fcnp = ap->a_fcnp;
 struct denode *ip, *xp, *dp, *zp;
 u_char toname[12], oldname[11];
 u_long from_diroffset, to_diroffset;
 u_char to_count;
 int doingdirectory = 0, newparent = 0;
 int error;
 u_long cn, pcl;
 daddr_t bn;
 struct msdosfsmount *pmp;
 struct direntry *dotdotp;
 struct buf *bp;

 pmp = VFSTOMSDOSFS(fdvp->v_mount);
 if (fvp->v_mount != tdvp->v_mount ||
     (tvp && fvp->v_mount != tvp->v_mount)) {
  error = EXDEV;
abortit:
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  if (tvp)
   vput(tvp);
  vrele(fdvp);
  vrele(fvp);
  return (error);
 }




 if (tvp == fvp) {
  error = 0;
  goto abortit;
 }

 error = vn_lock(fvp, LK_EXCLUSIVE);
 if (error)
  goto abortit;
 dp = VTODE(fdvp);
 ip = VTODE(fvp);







 if (ip->de_Attributes & ATTR_DIRECTORY) {



  if ((fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.') ||
      dp == ip ||
      (fcnp->cn_flags & ISDOTDOT) ||
      (tcnp->cn_flags & ISDOTDOT) ||
      (ip->de_flag & DE_RENAME)) {
   VOP_UNLOCK(fvp, 0);
   error = EINVAL;
   goto abortit;
  }
  ip->de_flag |= DE_RENAME;
  doingdirectory++;
 }





 dp = VTODE(tdvp);
 xp = tvp ? VTODE(tvp) : ((void*)0);



 to_diroffset = dp->de_fndoffset;
 to_count = dp->de_fndcnt;
 error = VOP_ACCESS(fvp, VWRITE, tcnp->cn_cred, tcnp->cn_thread);
 VOP_UNLOCK(fvp, 0);
 if (VTODE(fdvp)->de_StartCluster != VTODE(tdvp)->de_StartCluster)
  newparent = 1;
 if (doingdirectory && newparent) {
  if (error)
   goto bad;
  if (xp != ((void*)0))
   vput(tvp);




  error = doscheckpath(ip, dp);
  if (error)
   goto out;
  if ((tcnp->cn_flags & SAVESTART) == 0)
   panic("msdosfs_rename: lost to startdir");
  error = relookup(tdvp, &tvp, tcnp);
  if (error)
   goto out;
  dp = VTODE(tdvp);
  xp = tvp ? VTODE(tvp) : ((void*)0);
 }

 if (xp != ((void*)0)) {





  if (xp->de_Attributes & ATTR_DIRECTORY) {
   if (!dosdirempty(xp)) {
    error = ENOTEMPTY;
    goto bad;
   }
   if (!doingdirectory) {
    error = ENOTDIR;
    goto bad;
   }
   cache_purge(tdvp);
  } else if (doingdirectory) {
   error = EISDIR;
   goto bad;
  }
  error = removede(dp, xp);
  if (error)
   goto bad;
  vput(tvp);
  xp = ((void*)0);
 }






 error = uniqdosname(VTODE(tdvp), tcnp, toname);
 if (error)
  goto abortit;





 fcnp->cn_flags &= ~MODMASK;
 fcnp->cn_flags |= LOCKPARENT | LOCKLEAF;
 if ((fcnp->cn_flags & SAVESTART) == 0)
  panic("msdosfs_rename: lost from startdir");
 if (!newparent)
  VOP_UNLOCK(tdvp, 0);
 if (relookup(fdvp, &fvp, fcnp) == 0)
  vrele(fdvp);
 if (fvp == ((void*)0)) {



  if (doingdirectory)
   panic("rename: lost dir entry");
  if (newparent)
   VOP_UNLOCK(tdvp, 0);
  vrele(tdvp);
  vrele(ap->a_fvp);
  return 0;
 }
 xp = VTODE(fvp);
 zp = VTODE(fdvp);
 from_diroffset = zp->de_fndoffset;
 if (xp != ip) {
  if (doingdirectory)
   panic("rename: lost dir entry");
  VOP_UNLOCK(fvp, 0);
  if (newparent)
   VOP_UNLOCK(fdvp, 0);
  vrele(ap->a_fvp);
  xp = ((void*)0);
 } else {
  vrele(fvp);
  xp = ((void*)0);
  memcpy(oldname, ip->de_Name, 11);
  memcpy(ip->de_Name, toname, 11);
  dp->de_fndoffset = to_diroffset;
  dp->de_fndcnt = to_count;
  error = createde(ip, dp, (struct denode **)0, tcnp);
  if (error) {
   memcpy(ip->de_Name, oldname, 11);
   if (newparent)
    VOP_UNLOCK(fdvp, 0);
   VOP_UNLOCK(fvp, 0);
   goto bad;
  }
  if ((ip->de_Attributes & ATTR_DIRECTORY) != 0)
   memcpy(ip->de_Name, oldname, 11);
  ip->de_refcnt++;
  zp->de_fndoffset = from_diroffset;
  error = removede(zp, ip);
  if (error) {

   if (newparent)
    VOP_UNLOCK(fdvp, 0);
   VOP_UNLOCK(fvp, 0);
   goto bad;
  }
  if (!doingdirectory) {
   error = pcbmap(dp, de_cluster(pmp, to_diroffset), 0,
           &ip->de_dirclust, 0);
   if (error) {

    if (newparent)
     VOP_UNLOCK(fdvp, 0);
    VOP_UNLOCK(fvp, 0);
    goto bad;
   }
   if (ip->de_dirclust == MSDOSFSROOT)
    ip->de_diroffset = to_diroffset;
   else
    ip->de_diroffset = to_diroffset & pmp->pm_crbomask;
  }
  reinsert(ip);
  if (newparent)
   VOP_UNLOCK(fdvp, 0);
 }





 if (doingdirectory && newparent) {
  cn = ip->de_StartCluster;
  if (cn == MSDOSFSROOT) {

   panic("msdosfs_rename(): updating .. in root directory?");
  } else
   bn = cntobn(pmp, cn);
  error = bread(pmp->pm_devvp, bn, pmp->pm_bpcluster,
         NOCRED, &bp);
  if (error) {

   VOP_UNLOCK(fvp, 0);
   goto bad;
  }
  dotdotp = (struct direntry *)bp->b_data + 1;
  pcl = dp->de_StartCluster;
  if (FAT32(pmp) && pcl == pmp->pm_rootdirblk)
   pcl = MSDOSFSROOT;
  putushort(dotdotp->deStartCluster, pcl);
  if (FAT32(pmp))
   putushort(dotdotp->deHighClust, pcl >> 16);
  if (DOINGASYNC(fvp))
   bdwrite(bp);
  else if ((error = bwrite(bp)) != 0) {

   VOP_UNLOCK(fvp, 0);
   goto bad;
  }
 }
 cache_purge(fvp);
 VOP_UNLOCK(fvp, 0);
bad:
 if (xp)
  vput(tvp);
 vput(tdvp);
out:
 ip->de_flag &= ~DE_RENAME;
 vrele(fdvp);
 vrele(fvp);
 return (error);

}
