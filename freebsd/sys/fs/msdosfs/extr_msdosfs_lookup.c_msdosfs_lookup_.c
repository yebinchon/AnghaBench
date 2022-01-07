
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;
typedef char u_char ;
struct winentry {int dummy; } ;
struct vnode {int v_vflag; } ;
struct msdosfsmount {int pm_flags; int pm_rootdirblk; scalar_t__ pm_bpcluster; int pm_devvp; } ;
struct mbnambuf {int dummy; } ;
struct direntry {scalar_t__* deName; int deAttributes; int deHighClust; int deStartCluster; } ;
struct denode {int de_Attributes; int de_fndoffset; int de_fndcnt; int de_refcnt; int de_StartCluster; int de_inode; struct msdosfsmount* de_pmp; } ;
struct deget_dotdot {int cluster; int blkoff; } ;
struct componentname {int cn_flags; int cn_nameiop; char* cn_nameptr; int cn_namelen; int cn_lkflags; int cn_thread; int cn_cred; } ;
struct buf {scalar_t__ b_data; } ;
typedef int daddr_t ;


 int ATTR_DIRECTORY ;
 int ATTR_VOLUME ;
 int ATTR_WIN95 ;
 int CREATE ;
 int DELETE ;
 struct vnode* DETOV (struct denode*) ;
 int E2BIG ;
 int EBUSY ;
 int EINVAL ;
 int EISDIR ;
 int EJUSTRETURN ;
 int ENOENT ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int MAKEENTRY ;
 int MSDOSFSMNT_SHORTNAME ;
 int MSDOSFSROOT ;
 int MSDOSFSROOT_OFS ;
 int NOCRED ;
 int RENAME ;
 int SAVENAME ;
 scalar_t__ SLOT_DELETED ;
 scalar_t__ SLOT_EMPTY ;
 int VOP_ACCESS (struct vnode*,int ,int ,int ) ;
 int VREF (struct vnode*) ;
 struct denode* VTODE (struct vnode*) ;
 int VV_ROOT ;
 int VWRITE ;
 scalar_t__ bcmp (char*,scalar_t__*,int) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int cache_enter (struct vnode*,struct vnode*,struct componentname*) ;
 int deget (struct msdosfsmount*,int,int,struct denode**) ;
 int getushort (int ) ;
 int mbnambuf_init (struct mbnambuf*) ;
 int msdosfs_deget_dotdot ;
 int pcbmap (struct denode*,int,int *,int*,int*) ;
 int printf (char*,...) ;
 int unix2dosfn (char const*,char*,int,int ,struct msdosfsmount*) ;
 int vn_vget_ino_gen (struct vnode*,int ,struct deget_dotdot*,int ,struct vnode**) ;
 int vput (struct vnode*) ;
 int win2unixfn (struct mbnambuf*,struct winentry*,int,struct msdosfsmount*) ;
 int winChkName (struct mbnambuf*,char const*,int,int,struct msdosfsmount*) ;
 int winChksum (scalar_t__*) ;
 int winLenFixup (char*,int) ;
 int winSlotCnt (char const*,int,struct msdosfsmount*) ;

__attribute__((used)) static int
msdosfs_lookup_(struct vnode *vdp, struct vnode **vpp,
    struct componentname *cnp, uint64_t *dd_inum)
{
 struct mbnambuf nb;
 daddr_t bn;
 int error;
 int slotcount;
 int slotoffset = 0;
 int frcn;
 u_long cluster;
 int blkoff;
 int diroff;
 int blsize;
 int isadir;
 u_long scn;
 struct vnode *pdp;
 struct denode *dp;
 struct denode *tdp;
 struct msdosfsmount *pmp;
 struct buf *bp = ((void*)0);
 struct direntry *dep = ((void*)0);
 struct deget_dotdot dd_arg;
 u_char dosfilename[12];
 int flags = cnp->cn_flags;
 int nameiop = cnp->cn_nameiop;
 int unlen;
 uint64_t inode1;

 int wincnt = 1;
 int chksum = -1, chksum_ok;
 int olddos = 1;




 dp = VTODE(vdp);
 pmp = dp->de_pmp;





 restart:
 if (vpp != ((void*)0))
  *vpp = ((void*)0);





 if ((vdp->v_vflag & VV_ROOT) && cnp->cn_nameptr[0] == '.' &&
     (cnp->cn_namelen == 1 ||
  (cnp->cn_namelen == 2 && cnp->cn_nameptr[1] == '.'))) {
  isadir = ATTR_DIRECTORY;
  scn = MSDOSFSROOT;



  cluster = MSDOSFSROOT;
  blkoff = MSDOSFSROOT_OFS;
  goto foundroot;
 }

 switch (unix2dosfn((const u_char *)cnp->cn_nameptr, dosfilename,
     cnp->cn_namelen, 0, pmp)) {
 case 0:
  return (EINVAL);
 case 1:
  break;
 case 2:
  wincnt = winSlotCnt((const u_char *)cnp->cn_nameptr,
      cnp->cn_namelen, pmp) + 1;
  break;
 case 3:
  olddos = 0;
  wincnt = winSlotCnt((const u_char *)cnp->cn_nameptr,
      cnp->cn_namelen, pmp) + 1;
  break;
 }
 if (pmp->pm_flags & MSDOSFSMNT_SHORTNAME) {
  wincnt = 1;
  olddos = 1;
 }
 unlen = winLenFixup(cnp->cn_nameptr, cnp->cn_namelen);







 slotcount = wincnt;
 if ((nameiop == CREATE || nameiop == RENAME) &&
     (flags & ISLASTCN))
  slotcount = 0;
 tdp = ((void*)0);
 mbnambuf_init(&nb);







 diroff = 0;
 for (frcn = 0;; frcn++) {
  error = pcbmap(dp, frcn, &bn, &cluster, &blsize);
  if (error) {
   if (error == E2BIG)
    break;
   return (error);
  }
  error = bread(pmp->pm_devvp, bn, blsize, NOCRED, &bp);
  if (error) {
   return (error);
  }
  for (blkoff = 0; blkoff < blsize;
       blkoff += sizeof(struct direntry),
       diroff += sizeof(struct direntry)) {
   dep = (struct direntry *)(bp->b_data + blkoff);
   if (dep->deName[0] == SLOT_EMPTY ||
       dep->deName[0] == SLOT_DELETED) {



    chksum = -1;
    mbnambuf_init(&nb);

    if (slotcount < wincnt) {
     slotcount++;
     slotoffset = diroff;
    }
    if (dep->deName[0] == SLOT_EMPTY) {
     brelse(bp);
     goto notfound;
    }
   } else {




    if (slotcount < wincnt)
     slotcount = 0;




    if (dep->deAttributes == ATTR_WIN95) {
     if (pmp->pm_flags & MSDOSFSMNT_SHORTNAME)
      continue;

     chksum = win2unixfn(&nb,
         (struct winentry *)dep, chksum,
         pmp);
     continue;
    }

    chksum = winChkName(&nb,
        (const u_char *)cnp->cn_nameptr, unlen,
        chksum, pmp);
    if (chksum == -2) {
     chksum = -1;
     continue;
    }





    if (dep->deAttributes & ATTR_VOLUME) {
     chksum = -1;
     continue;
    }




    chksum_ok = (chksum == winChksum(dep->deName));
    if (!chksum_ok
        && (!olddos || bcmp(dosfilename, dep->deName, 11))) {
     chksum = -1;
     continue;
    }
    dp->de_fndoffset = diroff;
    if (chksum_ok && nameiop == RENAME) {





     dp->de_fndcnt = wincnt - 1;
    } else {





     dp->de_fndcnt = 0;
    }

    goto found;
   }
  }




  brelse(bp);
 }

notfound:
 if (!slotcount) {
  slotcount = 1;
  slotoffset = diroff;
 }
 if (wincnt > slotcount)
  slotoffset += sizeof(struct direntry) * (wincnt - slotcount);
 if ((nameiop == CREATE || nameiop == RENAME) &&
     (flags & ISLASTCN) && dp->de_refcnt != 0) {




  error = VOP_ACCESS(vdp, VWRITE, cnp->cn_cred, cnp->cn_thread);
  if (error)
   return (error);




  dp->de_fndoffset = slotoffset;
  dp->de_fndcnt = wincnt - 1;
  cnp->cn_flags |= SAVENAME;
  return (EJUSTRETURN);
 }
 return (ENOENT);

found:




 isadir = dep->deAttributes & ATTR_DIRECTORY;
 scn = getushort(dep->deStartCluster);
 if (FAT32(pmp)) {
  scn |= getushort(dep->deHighClust) << 16;
  if (scn == pmp->pm_rootdirblk) {




   scn = MSDOSFSROOT;
  }
 }

 if (isadir) {
  cluster = scn;
  if (cluster == MSDOSFSROOT)
   blkoff = MSDOSFSROOT_OFS;
  else
   blkoff = 0;
 } else if (cluster == MSDOSFSROOT)
  blkoff = diroff;






 brelse(bp);
 bp = ((void*)0);

foundroot:





 if (FAT32(pmp) && scn == MSDOSFSROOT)
  scn = pmp->pm_rootdirblk;

 if (dd_inum != ((void*)0)) {
  *dd_inum = (uint64_t)pmp->pm_bpcluster * scn + blkoff;
  return (0);
 }





 if (nameiop == DELETE && (flags & ISLASTCN)) {



  if (blkoff == MSDOSFSROOT_OFS)
   return (EBUSY);




  error = VOP_ACCESS(vdp, VWRITE, cnp->cn_cred, cnp->cn_thread);
  if (error)
   return (error);





  if (dp->de_StartCluster == scn && isadir) {
   VREF(vdp);
   *vpp = vdp;
   return (0);
  }
  error = deget(pmp, cluster, blkoff, &tdp);
  if (error)
   return (error);
  *vpp = DETOV(tdp);
  return (0);
 }







 if (nameiop == RENAME && (flags & ISLASTCN)) {
  if (blkoff == MSDOSFSROOT_OFS)
   return (EBUSY);

  error = VOP_ACCESS(vdp, VWRITE, cnp->cn_cred, cnp->cn_thread);
  if (error)
   return (error);





  if (dp->de_StartCluster == scn && isadir)
   return (EISDIR);

  if ((error = deget(pmp, cluster, blkoff, &tdp)) != 0)
   return (error);
  *vpp = DETOV(tdp);
  cnp->cn_flags |= SAVENAME;
  return (0);
 }
 pdp = vdp;
 if (flags & ISDOTDOT) {
  dd_arg.cluster = cluster;
  dd_arg.blkoff = blkoff;
  error = vn_vget_ino_gen(vdp, msdosfs_deget_dotdot,
      &dd_arg, cnp->cn_lkflags, vpp);
  if (error != 0) {
   *vpp = ((void*)0);
   return (error);
  }




  error = msdosfs_lookup_(pdp, ((void*)0), cnp, &inode1);
  if (error) {
   vput(*vpp);
   *vpp = ((void*)0);
   return (error);
  }
  if (VTODE(*vpp)->de_inode != inode1) {
   vput(*vpp);
   goto restart;
  }
 } else if (dp->de_StartCluster == scn && isadir) {
  VREF(vdp);
  *vpp = vdp;
 } else {
  if ((error = deget(pmp, cluster, blkoff, &tdp)) != 0)
   return (error);
  *vpp = DETOV(tdp);
 }




 if (cnp->cn_flags & MAKEENTRY)
  cache_enter(vdp, *vpp, cnp);
 return (0);
}
