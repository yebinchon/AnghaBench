
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ucred {int dummy; } ;
struct msdosfsmount {int pm_crbomask; scalar_t__ pm_bpcluster; int pm_devvp; } ;
struct denode {int de_Attributes; int de_FileSize; int de_StartCluster; int de_flag; int de_diroffset; int de_dirclust; int * de_vnode; int de_Name; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_data; } ;
typedef int daddr_t ;


 int ATTR_DIRECTORY ;
 int CLUST_EOFE ;
 int DE_MODIFIED ;
 int DE_UPDATE ;
 int EINVAL ;
 int FAT32 (struct msdosfsmount*) ;
 int FAT_GET_AND_SET ;
 int FC_LASTFC ;
 int IO_SYNC ;
 int MSDOSFSEOF (struct msdosfsmount*,int) ;
 int MSDOSFS_DPRINTF (char*) ;
 int bdwrite (struct buf*) ;
 int bread (int ,int ,scalar_t__,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 int cntobn (struct msdosfsmount*,int) ;
 scalar_t__ de_clcount (struct msdosfsmount*,int) ;
 int de_cluster (struct msdosfsmount*,int) ;
 int deextend (struct denode*,int,struct ucred*) ;
 int fatentry (int ,struct msdosfsmount*,int,int*,int ) ;
 int fc_purge (struct denode*,scalar_t__) ;
 int fc_setcache (struct denode*,int ,int ,int) ;
 int freeclusterchain (struct msdosfsmount*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int pcbmap (struct denode*,scalar_t__,int ,int*,int ) ;

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

 MSDOSFS_DPRINTF(("detrunc(): file %s, length %lu, flags %x\n",
     dep->de_Name, length, flags));
 if (dep->de_vnode != ((void*)0) && !FAT32(pmp)) {
  MSDOSFS_DPRINTF(("detrunc(): can't truncate root directory, "
      "clust %ld, offset %ld\n",
      dep->de_dirclust, dep->de_diroffset));

  return (EINVAL);
 }

 if (dep->de_FileSize < length)
  return deextend(dep, length, cred);
 if (length == 0) {
  chaintofree = dep->de_StartCluster;
  dep->de_StartCluster = 0;
  eofentry = ~0;
 } else {
  error = pcbmap(dep, de_clcount(pmp, length) - 1, 0,
      &eofentry, 0);
  if (error) {
   MSDOSFS_DPRINTF(("detrunc(): pcbmap fails %d\n",
       error));
   return (error);
  }
 }

 fc_purge(dep, de_clcount(pmp, length));






 if ((boff = length & pmp->pm_crbomask) != 0) {
  if (isadir) {
   bn = cntobn(pmp, eofentry);
   error = bread(pmp->pm_devvp, bn, pmp->pm_bpcluster,
       0, &bp);
   if (error) {
    brelse(bp);
    MSDOSFS_DPRINTF(("detrunc(): bread fails %d\n",
        error));

    return (error);
   }
   memset(bp->b_data + boff, 0, pmp->pm_bpcluster - boff);
   if (flags & IO_SYNC)
    bwrite(bp);
   else
    bdwrite(bp);
  }
 }





 dep->de_FileSize = length;
 if (!isadir)
  dep->de_flag |= DE_UPDATE|DE_MODIFIED;
 MSDOSFS_DPRINTF(("detrunc(): allerror %d, eofentry %lu\n",
     allerror, eofentry));





 if (eofentry != ~0) {
  error = fatentry(FAT_GET_AND_SET, pmp, eofentry,
     &chaintofree, CLUST_EOFE);
  if (error) {
   MSDOSFS_DPRINTF(("detrunc(): fatentry errors %d\n",
       error));
   return (error);
  }
  fc_setcache(dep, FC_LASTFC, de_cluster(pmp, length - 1),
      eofentry);
 }





 if (chaintofree != 0 && !MSDOSFSEOF(pmp, chaintofree))
  freeclusterchain(pmp, chaintofree);

 return (allerror);
}
