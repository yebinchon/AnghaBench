
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;
struct msdosfsmount {int pm_flags; int pm_devvp; } ;
struct direntry {scalar_t__* deName; int deAttributes; } ;
struct denode {struct msdosfsmount* de_pmp; } ;
struct componentname {int cn_namelen; scalar_t__ cn_nameptr; } ;
struct buf {char* b_data; } ;
typedef int daddr_t ;


 int ATTR_VOLUME ;
 int E2BIG ;
 int EEXIST ;
 int EINVAL ;
 int MSDOSFSMNT_SHORTNAME ;
 int NOCRED ;
 scalar_t__ SLOT_EMPTY ;
 int bcmp (scalar_t__*,int *,int) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int pcbmap (struct denode*,int,int *,int ,int*) ;
 scalar_t__ unix2dosfn (int const*,int *,int ,int,struct msdosfsmount*) ;

int
uniqdosname(struct denode *dep, struct componentname *cnp, u_char *cp)
{
 struct msdosfsmount *pmp = dep->de_pmp;
 struct direntry *dentp;
 int gen;
 int blsize;
 u_long cn;
 daddr_t bn;
 struct buf *bp;
 int error;

 if (pmp->pm_flags & MSDOSFSMNT_SHORTNAME)
  return (unix2dosfn((const u_char *)cnp->cn_nameptr, cp,
      cnp->cn_namelen, 0, pmp) ? 0 : EINVAL);

 for (gen = 1;; gen++) {



  if (!unix2dosfn((const u_char *)cnp->cn_nameptr, cp,
      cnp->cn_namelen, gen, pmp))
   return gen == 1 ? EINVAL : EEXIST;




  for (cn = error = 0; !error; cn++) {
   if ((error = pcbmap(dep, cn, &bn, 0, &blsize)) != 0) {
    if (error == E2BIG)
     return 0;
    return error;
   }
   error = bread(pmp->pm_devvp, bn, blsize, NOCRED, &bp);
   if (error) {
    return error;
   }
   for (dentp = (struct direntry *)bp->b_data;
        (char *)dentp < bp->b_data + blsize;
        dentp++) {
    if (dentp->deName[0] == SLOT_EMPTY) {



     brelse(bp);
     return 0;
    }



    if (dentp->deAttributes & ATTR_VOLUME)
     continue;
    if (!bcmp(dentp->deName, cp, 11)) {
     error = EEXIST;
     break;
    }
   }
   brelse(bp);
  }
 }
}
