
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_long ;
struct vnode {int v_type; int v_vflag; struct denode* v_data; int v_vnlock; } ;
struct msdosfsmount {scalar_t__ pm_rootdirblk; int pm_rootdirsize; scalar_t__ pm_bpcluster; struct mount* pm_mountp; } ;
struct mount {int dummy; } ;
struct direntry {int dummy; } ;
struct denode {scalar_t__ de_dirclust; scalar_t__ de_diroffset; int de_refcnt; int de_Attributes; scalar_t__ de_StartCluster; int de_FileSize; int de_CTime; int de_CDate; int de_ADate; int de_MTime; int de_MDate; int de_modrev; int * de_Name; scalar_t__ de_CHun; scalar_t__ de_LowerCase; struct msdosfsmount* de_pmp; scalar_t__ de_inode; scalar_t__ de_flag; struct vnode* de_vnode; } ;
struct buf {int dummy; } ;


 int ATTR_DIRECTORY ;
 int DD_DAY_SHIFT ;
 int DD_MONTH_SHIFT ;
 int DD_YEAR_SHIFT ;
 int DEV_BSIZE ;
 int DE_INTERNALIZE (struct denode*,struct direntry*) ;
 int E2BIG ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 scalar_t__ MSDOSFSROOT ;
 scalar_t__ MSDOSFSROOT_OFS ;
 int M_MSDOSFSNODE ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLOT_DELETED ;
 int VDIR ;
 int VREG ;
 struct denode* VTODE (struct vnode*) ;
 int VV_ROOT ;
 int brelse (struct buf*) ;
 int curthread ;
 int de_cn2off (struct msdosfsmount*,scalar_t__) ;
 int de_vncmpf ;
 int fc_purge (struct denode*,int ) ;
 int free (struct denode*,int ) ;
 int getnewvnode (char*,struct mount*,int *,struct vnode**) ;
 int init_va_filerev () ;
 int insmntque (struct vnode*,struct mount*) ;
 int lockmgr (int ,int ,int *) ;
 struct denode* malloc (int,int ,int) ;
 int msdosfs_vnodeops ;
 int pcbmap (struct denode*,int,int ,scalar_t__*,int ) ;
 int printf (char*,...) ;
 int readep (struct msdosfsmount*,scalar_t__,scalar_t__,struct buf**,struct direntry**) ;
 int vfs_hash_get (struct mount*,scalar_t__,int ,int ,struct vnode**,int ,scalar_t__*) ;
 int vfs_hash_insert (struct vnode*,scalar_t__,int ,int ,struct vnode**,int ,scalar_t__*) ;
 int vput (struct vnode*) ;

int
deget(struct msdosfsmount *pmp, u_long dirclust, u_long diroffset,
    struct denode **depp)
{
 int error;
 uint64_t inode;
 struct mount *mntp = pmp->pm_mountp;
 struct direntry *direntptr;
 struct denode *ldep;
 struct vnode *nvp, *xvp;
 struct buf *bp;
 if (FAT32(pmp) && dirclust == MSDOSFSROOT)
  dirclust = pmp->pm_rootdirblk;
 inode = (uint64_t)pmp->pm_bpcluster * dirclust + diroffset;

 error = vfs_hash_get(mntp, inode, LK_EXCLUSIVE, curthread, &nvp,
     de_vncmpf, &inode);
 if (error)
  return (error);
 if (nvp != ((void*)0)) {
  *depp = VTODE(nvp);
  KASSERT((*depp)->de_dirclust == dirclust, ("wrong dirclust"));
  KASSERT((*depp)->de_diroffset == diroffset, ("wrong diroffset"));
  return (0);
 }
 ldep = malloc(sizeof(struct denode), M_MSDOSFSNODE, M_WAITOK | M_ZERO);






 error = getnewvnode("msdosfs", mntp, &msdosfs_vnodeops, &nvp);
 if (error) {
  *depp = ((void*)0);
  free(ldep, M_MSDOSFSNODE);
  return error;
 }
 nvp->v_data = ldep;
 ldep->de_vnode = nvp;
 ldep->de_flag = 0;
 ldep->de_dirclust = dirclust;
 ldep->de_diroffset = diroffset;
 ldep->de_inode = inode;
 lockmgr(nvp->v_vnlock, LK_EXCLUSIVE, ((void*)0));
 fc_purge(ldep, 0);
 error = insmntque(nvp, mntp);
 if (error != 0) {
  free(ldep, M_MSDOSFSNODE);
  *depp = ((void*)0);
  return (error);
 }
 error = vfs_hash_insert(nvp, inode, LK_EXCLUSIVE, curthread, &xvp,
     de_vncmpf, &inode);
 if (error) {
  *depp = ((void*)0);
  return (error);
 }
 if (xvp != ((void*)0)) {
  *depp = xvp->v_data;
  return (0);
 }

 ldep->de_pmp = pmp;
 ldep->de_refcnt = 1;



 if ((dirclust == MSDOSFSROOT
      || (FAT32(pmp) && dirclust == pmp->pm_rootdirblk))
     && diroffset == MSDOSFSROOT_OFS) {







  nvp->v_vflag |= VV_ROOT;

  ldep->de_Attributes = ATTR_DIRECTORY;
  ldep->de_LowerCase = 0;
  if (FAT32(pmp))
   ldep->de_StartCluster = pmp->pm_rootdirblk;

  else {
   ldep->de_StartCluster = MSDOSFSROOT;
   ldep->de_FileSize = pmp->pm_rootdirsize * DEV_BSIZE;
  }





  ldep->de_CHun = 0;
  ldep->de_CTime = 0x0000;
  ldep->de_CDate = (0 << DD_YEAR_SHIFT) | (1 << DD_MONTH_SHIFT)
      | (1 << DD_DAY_SHIFT);

  ldep->de_ADate = ldep->de_CDate;
  ldep->de_MTime = ldep->de_CTime;
  ldep->de_MDate = ldep->de_CDate;

 } else {
  error = readep(pmp, dirclust, diroffset, &bp, &direntptr);
  if (error) {





   ldep->de_Name[0] = SLOT_DELETED;

   vput(nvp);
   *depp = ((void*)0);
   return (error);
  }
  (void)DE_INTERNALIZE(ldep, direntptr);
  brelse(bp);
 }





 if (ldep->de_Attributes & ATTR_DIRECTORY) {






  u_long size;






  if (diroffset == 0 && ldep->de_StartCluster != dirclust) {




   ldep->de_StartCluster = dirclust;
  }

  nvp->v_type = VDIR;
  if (ldep->de_StartCluster != MSDOSFSROOT) {
   error = pcbmap(ldep, 0xffff, 0, &size, 0);
   if (error == E2BIG) {
    ldep->de_FileSize = de_cn2off(pmp, size);
    error = 0;
   } else {



   }
  }
 } else
  nvp->v_type = VREG;
 ldep->de_modrev = init_va_filerev();
 *depp = ldep;
 return (0);
}
