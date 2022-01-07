
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdosfsmount {int pm_rootdirblk; int pm_bpcluster; int pm_devvp; } ;
struct direntry {int deAttributes; int deHighClust; int deStartCluster; int deName; } ;
struct denode {int de_Attributes; int de_StartCluster; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_data; } ;
typedef int daddr_t ;


 int ATTR_DIRECTORY ;
 int DETOV (struct denode*) ;
 int EEXIST ;
 int EINVAL ;
 int ENOTDIR ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 int MSDOSFSROOT ;
 int NOCRED ;
 scalar_t__ bcmp (int ,char*,int) ;
 int bread (int ,int ,int ,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int cntobn (struct msdosfsmount*,int) ;
 int deget (struct msdosfsmount*,int,int ,struct denode**) ;
 int getushort (int ) ;
 int panic (char*) ;
 int printf (char*) ;
 int vput (int ) ;

int
doscheckpath(struct denode *source, struct denode *target)
{
 daddr_t scn;
 struct msdosfsmount *pmp;
 struct direntry *ep;
 struct denode *dep;
 struct buf *bp = ((void*)0);
 int error = 0;

 dep = target;
 if ((target->de_Attributes & ATTR_DIRECTORY) == 0 ||
     (source->de_Attributes & ATTR_DIRECTORY) == 0) {
  error = ENOTDIR;
  goto out;
 }
 if (dep->de_StartCluster == source->de_StartCluster) {
  error = EEXIST;
  goto out;
 }
 if (dep->de_StartCluster == MSDOSFSROOT)
  goto out;
 pmp = dep->de_pmp;




 if (FAT32(pmp) && dep->de_StartCluster == pmp->pm_rootdirblk)
  goto out;

 for (;;) {
  if ((dep->de_Attributes & ATTR_DIRECTORY) == 0) {
   error = ENOTDIR;
   break;
  }
  scn = dep->de_StartCluster;
  error = bread(pmp->pm_devvp, cntobn(pmp, scn),
         pmp->pm_bpcluster, NOCRED, &bp);
  if (error)
   break;

  ep = (struct direntry *) bp->b_data + 1;
  if ((ep->deAttributes & ATTR_DIRECTORY) == 0 ||
      bcmp(ep->deName, "..         ", 11) != 0) {
   error = ENOTDIR;
   break;
  }
  scn = getushort(ep->deStartCluster);
  if (FAT32(pmp))
   scn |= getushort(ep->deHighClust) << 16;

  if (scn == source->de_StartCluster) {
   error = EINVAL;
   break;
  }
  if (scn == MSDOSFSROOT)
   break;
  if (FAT32(pmp) && scn == pmp->pm_rootdirblk) {




   break;
  }

  vput(DETOV(dep));
  brelse(bp);
  bp = ((void*)0);

  if ((error = deget(pmp, scn, 0, &dep)) != 0)
   break;
 }
out:;
 if (bp)
  brelse(bp);




 if (dep != ((void*)0))
  vput(DETOV(dep));
 return (error);
}
