
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct msdosfsmount {int pm_devvp; } ;
struct direntry {scalar_t__* deName; int deAttributes; } ;
struct denode {struct msdosfsmount* de_pmp; } ;
struct buf {char* b_data; } ;
typedef int daddr_t ;


 int ATTR_VOLUME ;
 int E2BIG ;
 int NOCRED ;
 scalar_t__ SLOT_DELETED ;
 scalar_t__ SLOT_EMPTY ;
 scalar_t__ bcmp (scalar_t__*,char*,int) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int pcbmap (struct denode*,scalar_t__,int *,int ,int*) ;
 int printf (char*,scalar_t__,scalar_t__) ;

int
dosdirempty(struct denode *dep)
{
 int blsize;
 int error;
 u_long cn;
 daddr_t bn;
 struct buf *bp;
 struct msdosfsmount *pmp = dep->de_pmp;
 struct direntry *dentp;






 for (cn = 0;; cn++) {
  if ((error = pcbmap(dep, cn, &bn, 0, &blsize)) != 0) {
   if (error == E2BIG)
    return (1);
   return (0);
  }
  error = bread(pmp->pm_devvp, bn, blsize, NOCRED, &bp);
  if (error) {
   return (0);
  }
  for (dentp = (struct direntry *)bp->b_data;
       (char *)dentp < bp->b_data + blsize;
       dentp++) {
   if (dentp->deName[0] != SLOT_DELETED &&
       (dentp->deAttributes & ATTR_VOLUME) == 0) {







    if (dentp->deName[0] == SLOT_EMPTY) {
     brelse(bp);
     return (1);
    }




    if (bcmp(dentp->deName, ".          ", 11) &&
        bcmp(dentp->deName, "..         ", 11)) {
     brelse(bp);




     return (0);
    }
   }
  }
  brelse(bp);
 }

}
