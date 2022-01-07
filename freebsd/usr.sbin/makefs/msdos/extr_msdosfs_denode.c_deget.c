
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_long ;
struct vnode {int dummy; } ;
struct msdosfsmount {scalar_t__ pm_rootdirblk; int pm_rootdirsize; scalar_t__ pm_bpcluster; } ;
struct direntry {int dummy; } ;
struct denode {int de_refcnt; int de_Attributes; scalar_t__ de_StartCluster; int de_FileSize; int de_CTime; int de_CDate; int de_ADate; int de_MTime; int de_MDate; int * de_Name; scalar_t__ de_CHun; scalar_t__ de_LowerCase; struct vnode* de_vnode; struct msdosfsmount* de_pmp; scalar_t__ de_inode; scalar_t__ de_diroffset; scalar_t__ de_dirclust; scalar_t__ de_flag; } ;
struct buf {int dummy; } ;


 int ATTR_DIRECTORY ;
 int DD_DAY_SHIFT ;
 int DD_MONTH_SHIFT ;
 int DD_YEAR_SHIFT ;
 int DEV_BSIZE ;
 int DE_INTERNALIZE (struct denode*,struct direntry*) ;
 int E2BIG ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 scalar_t__ MSDOSFSROOT ;
 scalar_t__ MSDOSFSROOT_OFS ;
 int MSDOSFS_DPRINTF (char*) ;
 int SLOT_DELETED ;
 int brelse (struct buf*) ;
 int de_cn2off (struct msdosfsmount*,scalar_t__) ;
 struct denode* ecalloc (int,int) ;
 int fc_purge (struct denode*,int ) ;
 int pcbmap (struct denode*,int,int ,scalar_t__*,int ) ;
 int readep (struct msdosfsmount*,scalar_t__,scalar_t__,struct buf**,struct direntry**) ;

int
deget(struct msdosfsmount *pmp, u_long dirclust, u_long diroffset,
    struct denode **depp)
{
 int error;
 uint64_t inode;
 struct direntry *direntptr;
 struct denode *ldep;
 struct buf *bp;

 MSDOSFS_DPRINTF(("deget(pmp %p, dirclust %lu, diroffset %lx, depp %p)\n",
     pmp, dirclust, diroffset, depp));





 if (FAT32(pmp) && dirclust == MSDOSFSROOT)
  dirclust = pmp->pm_rootdirblk;

 inode = (uint64_t)pmp->pm_bpcluster * dirclust + diroffset;

 ldep = ecalloc(1, sizeof(*ldep));
 ldep->de_vnode = ((void*)0);
 ldep->de_flag = 0;
 ldep->de_dirclust = dirclust;
 ldep->de_diroffset = diroffset;
 ldep->de_inode = inode;
 ldep->de_pmp = pmp;
 ldep->de_refcnt = 1;
 fc_purge(ldep, 0);



 if ((dirclust == MSDOSFSROOT
      || (FAT32(pmp) && dirclust == pmp->pm_rootdirblk))
     && diroffset == MSDOSFSROOT_OFS) {







  ldep->de_vnode = (struct vnode *)-1;

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

   *depp = ((void*)0);
   return (error);
  }
  (void)DE_INTERNALIZE(ldep, direntptr);
  brelse(bp);
 }





 if (ldep->de_Attributes & ATTR_DIRECTORY) {






  u_long size;






  if (diroffset == 0 && ldep->de_StartCluster != dirclust) {
   MSDOSFS_DPRINTF(("deget(): \".\" entry at clust %lu != %lu\n",
       dirclust, ldep->de_StartCluster));

   ldep->de_StartCluster = dirclust;
  }

  if (ldep->de_StartCluster != MSDOSFSROOT) {
   error = pcbmap(ldep, 0xffff, 0, &size, 0);
   if (error == E2BIG) {
    ldep->de_FileSize = de_cn2off(pmp, size);
    error = 0;
   } else {
    MSDOSFS_DPRINTF(("deget(): pcbmap returned %d\n",
        error));
   }
  }
 }
 *depp = ldep;
 return (0);
}
