
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_long ;
typedef int u_char ;
struct winentry {int dummy; } ;
struct msdosfsmount {scalar_t__ pm_crbomask; scalar_t__ pm_rootdirblk; int pm_devvp; } ;
struct direntry {int deName; } ;
struct denode {scalar_t__ de_fndoffset; scalar_t__ de_FileSize; scalar_t__ de_fndcnt; int de_Attributes; scalar_t__ de_StartCluster; struct msdosfsmount* de_pmp; } ;
struct componentname {int cn_namelen; scalar_t__ cn_nameptr; } ;
struct buf {int dummy; } ;
typedef int daddr_t ;


 int ATTR_DIRECTORY ;
 int DE_CLEAR ;
 int DE_EXTERNALIZE (struct direntry*,struct denode*) ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 scalar_t__ MSDOSFSROOT ;
 scalar_t__ MSDOSFSROOT_OFS ;
 int MSDOSFS_DPRINTF (char*) ;
 int NOCRED ;
 struct direntry* bptoep (struct msdosfsmount*,struct buf*,scalar_t__) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 scalar_t__ de_clcount (struct msdosfsmount*,scalar_t__) ;
 int de_cluster (struct msdosfsmount*,scalar_t__) ;
 scalar_t__ de_cn2off (struct msdosfsmount*,scalar_t__) ;
 int deget (struct msdosfsmount*,scalar_t__,scalar_t__,struct denode**) ;
 int detrunc (struct denode*,scalar_t__,int ,int *) ;
 int extendfile (struct denode*,scalar_t__,int ,int ,int ) ;
 int pcbmap (struct denode*,int ,int *,scalar_t__*,int*) ;
 int unix2winfn (int const*,int,struct winentry*,int ,int ) ;
 int winChksum (int ) ;

int
createde(struct denode *dep, struct denode *ddep, struct denode **depp,
    struct componentname *cnp)
{
 int error;
 u_long dirclust, diroffset;
 struct direntry *ndep;
 struct msdosfsmount *pmp = ddep->de_pmp;
 struct buf *bp;
 daddr_t bn;
 int blsize;

 MSDOSFS_DPRINTF(("createde(dep %p, ddep %p, depp %p, cnp %p)\n",
     dep, ddep, depp, cnp));
 if (ddep->de_fndoffset >= ddep->de_FileSize) {
  diroffset = ddep->de_fndoffset + sizeof(struct direntry)
      - ddep->de_FileSize;
  dirclust = de_clcount(pmp, diroffset);
  error = extendfile(ddep, dirclust, 0, 0, DE_CLEAR);
  if (error) {
   (void)detrunc(ddep, ddep->de_FileSize, 0, ((void*)0));
   return error;
  }




  ddep->de_FileSize += de_cn2off(pmp, dirclust);
 }






 error = pcbmap(ddep, de_cluster(pmp, ddep->de_fndoffset),
         &bn, &dirclust, &blsize);
 if (error)
  return error;
 diroffset = ddep->de_fndoffset;
 if (dirclust != MSDOSFSROOT)
  diroffset &= pmp->pm_crbomask;
 if ((error = bread(pmp->pm_devvp, bn, blsize, NOCRED, &bp)) != 0) {
  brelse(bp);
  return error;
 }
 ndep = bptoep(pmp, bp, ddep->de_fndoffset);

 DE_EXTERNALIZE(ndep, dep);




 if (ddep->de_fndcnt > 0) {
  uint8_t chksum = winChksum(ndep->deName);
  const u_char *un = (const u_char *)cnp->cn_nameptr;
  int unlen = cnp->cn_namelen;
  int cnt = 1;

  while (--ddep->de_fndcnt >= 0) {
   if (!(ddep->de_fndoffset & pmp->pm_crbomask)) {
    if ((error = bwrite(bp)) != 0)
     return error;

    ddep->de_fndoffset -= sizeof(struct direntry);
    error = pcbmap(ddep,
            de_cluster(pmp,
         ddep->de_fndoffset),
            &bn, 0, &blsize);
    if (error)
     return error;

    error = bread(pmp->pm_devvp, bn, blsize,
           NOCRED, &bp);
    if (error) {
     brelse(bp);
     return error;
    }
    ndep = bptoep(pmp, bp, ddep->de_fndoffset);
   } else {
    ndep--;
    ddep->de_fndoffset -= sizeof(struct direntry);
   }
   if (!unix2winfn(un, unlen, (struct winentry *)ndep,
     cnt++, chksum))
    break;
  }
 }

 if ((error = bwrite(bp)) != 0)
  return error;




 if (depp) {
  if (dep->de_Attributes & ATTR_DIRECTORY) {
   dirclust = dep->de_StartCluster;
   if (FAT32(pmp) && dirclust == pmp->pm_rootdirblk)
    dirclust = MSDOSFSROOT;
   if (dirclust == MSDOSFSROOT)
    diroffset = MSDOSFSROOT_OFS;
   else
    diroffset = 0;
  }
  return deget(pmp, dirclust, diroffset, depp);
 }

 return 0;
}
