
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct ucred {int dummy; } ;
struct msdosfsmount {int pm_crbomask; scalar_t__ pm_bpcluster; TYPE_1__* pm_devvp; } ;
struct denode {int de_Attributes; char* de_Name; int de_FileSize; int de_StartCluster; int de_flag; int de_diroffset; int de_dirclust; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_data; } ;
typedef int daddr_t ;
struct TYPE_6__ {int v_vflag; } ;


 int ATTR_DIRECTORY ;
 int CLUST_EOFE ;
 TYPE_1__* DETOV (struct denode*) ;
 int DE_MODIFIED ;
 int DE_UPDATE ;
 int DOINGASYNC (TYPE_1__*) ;
 int EINVAL ;
 int FAT32 (struct msdosfsmount*) ;
 int FAT_GET_AND_SET ;
 int FC_LASTFC ;
 int IO_SYNC ;
 int MSDOSFSEOF (struct msdosfsmount*,int) ;
 struct ucred* NOCRED ;
 int VV_ROOT ;
 int bdwrite (struct buf*) ;
 int bread (TYPE_1__*,int ,scalar_t__,struct ucred*,struct buf**) ;
 int bwrite (struct buf*) ;
 int cntobn (struct msdosfsmount*,int) ;
 scalar_t__ de_clcount (struct msdosfsmount*,int) ;
 int de_cluster (struct msdosfsmount*,int) ;
 int deextend (struct denode*,int,struct ucred*) ;
 int deupdat (struct denode*,int) ;
 int fatentry (int ,struct msdosfsmount*,int,int*,int ) ;
 int fc_purge (struct denode*,scalar_t__) ;
 int fc_setcache (struct denode*,int ,int ,int) ;
 int freeclusterchain (struct msdosfsmount*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int pcbmap (struct denode*,scalar_t__,int ,int*,int ) ;
 int printf (char*,...) ;
 int vnode_pager_setsize (TYPE_1__*,int) ;
 int vtruncbuf (TYPE_1__*,int,scalar_t__) ;

int
detrunc(struct denode *dep, u_long length, int flags, struct ucred *cred)
{
 int error;
 int allerror;
 u_long eofentry;
 u_long chaintofree;
 daddr_t bn;
 int boff;
 int isadir = dep->de_Attributes & ATTR_DIRECTORY;
 struct buf *bp;
 struct msdosfsmount *pmp = dep->de_pmp;
 if ((DETOV(dep)->v_vflag & VV_ROOT) && !FAT32(pmp)) {




  return (EINVAL);
 }

 if (dep->de_FileSize < length) {
  vnode_pager_setsize(DETOV(dep), length);
  return deextend(dep, length, cred);
 }
 if (length == 0) {
  chaintofree = dep->de_StartCluster;
  dep->de_StartCluster = 0;
  eofentry = ~0;
 } else {
  error = pcbmap(dep, de_clcount(pmp, length) - 1, 0,
          &eofentry, 0);
  if (error) {



   return (error);
  }
 }

 fc_purge(dep, de_clcount(pmp, length));






 if ((boff = length & pmp->pm_crbomask) != 0) {
  if (isadir) {
   bn = cntobn(pmp, eofentry);
   error = bread(pmp->pm_devvp, bn, pmp->pm_bpcluster,
       NOCRED, &bp);
  } else {
   error = bread(DETOV(dep), de_cluster(pmp, length),
       pmp->pm_bpcluster, cred, &bp);
  }
  if (error) {



   return (error);
  }
  memset(bp->b_data + boff, 0, pmp->pm_bpcluster - boff);
  if ((flags & IO_SYNC) != 0)
   bwrite(bp);
  else
   bdwrite(bp);
 }





 dep->de_FileSize = length;
 if (!isadir)
  dep->de_flag |= DE_UPDATE | DE_MODIFIED;
 allerror = vtruncbuf(DETOV(dep), length, pmp->pm_bpcluster);




 error = deupdat(dep, !DOINGASYNC((DETOV(dep))));
 if (error != 0 && allerror == 0)
  allerror = error;
 if (eofentry != ~0) {
  error = fatentry(FAT_GET_AND_SET, pmp, eofentry,
     &chaintofree, CLUST_EOFE);
  if (error) {



   return (error);
  }
  fc_setcache(dep, FC_LASTFC, de_cluster(pmp, length - 1),
       eofentry);
 }





 if (chaintofree != 0 && !MSDOSFSEOF(pmp, chaintofree))
  freeclusterchain(pmp, chaintofree);

 return (allerror);
}
