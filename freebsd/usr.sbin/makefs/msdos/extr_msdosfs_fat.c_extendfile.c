
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct msdosfsmount {int pm_bpcluster; int pm_devvp; } ;
struct denode {scalar_t__ de_StartCluster; int de_Attributes; TYPE_1__* de_fc; struct msdosfsmount* de_pmp; } ;
struct buf {int dummy; } ;
struct TYPE_2__ {scalar_t__ fc_frcn; scalar_t__ fc_fsrcn; } ;


 int ATTR_DIRECTORY ;
 int CLUST_EOFE ;
 int DE_CLEAR ;
 int E2BIG ;
 int ENOSPC ;
 int FAT_SET ;
 scalar_t__ FCE_EMPTY ;
 size_t FC_LASTFC ;
 size_t FC_NEXTTOLASTFC ;
 scalar_t__ MSDOSFSROOT ;
 int bdwrite (struct buf*) ;
 int clrbuf (struct buf*) ;
 int clusteralloc (struct msdosfsmount*,scalar_t__,scalar_t__,int ,scalar_t__*,scalar_t__*) ;
 int clusterfree (struct msdosfsmount*,scalar_t__,int *) ;
 int cntobn (struct msdosfsmount*,int ) ;
 int fatentry (int ,struct msdosfsmount*,scalar_t__,int ,scalar_t__) ;
 int fc_setcache (struct denode*,size_t,scalar_t__,scalar_t__) ;
 struct buf* getblk (int ,int ,int ,int ,int ,int ) ;
 int pcbmap (struct denode*,int,int ,scalar_t__*,int ) ;
 int printf (char*) ;

int
extendfile(struct denode *dep, u_long count, struct buf **bpp, u_long *ncp,
    int flags)
{
 int error;
 u_long frcn;
 u_long cn, got;
 struct msdosfsmount *pmp = dep->de_pmp;
 struct buf *bp;




 if (dep->de_StartCluster == MSDOSFSROOT
     && (dep->de_Attributes & ATTR_DIRECTORY)) {



  return (ENOSPC);
 }





 if (dep->de_fc[FC_LASTFC].fc_frcn == FCE_EMPTY &&
     dep->de_StartCluster != 0) {
  error = pcbmap(dep, 0xffff, 0, &cn, 0);

  if (error != E2BIG)
   return (error);
 }

 dep->de_fc[FC_NEXTTOLASTFC].fc_frcn =
     dep->de_fc[FC_LASTFC].fc_frcn;
 dep->de_fc[FC_NEXTTOLASTFC].fc_fsrcn =
     dep->de_fc[FC_LASTFC].fc_fsrcn;
 while (count > 0) {
  if (dep->de_StartCluster == 0)
   cn = 0;
  else
   cn = dep->de_fc[FC_LASTFC].fc_fsrcn + 1;
  error = clusteralloc(pmp, cn, count, CLUST_EOFE, &cn, &got);
  if (error)
   return (error);

  count -= got;





  if (ncp) {
   *ncp = cn;
   ncp = ((void*)0);
  }

  if (dep->de_StartCluster == 0) {
   dep->de_StartCluster = cn;
   frcn = 0;
  } else {
   error = fatentry(FAT_SET, pmp,
      dep->de_fc[FC_LASTFC].fc_fsrcn,
      0, cn);
   if (error) {
    clusterfree(pmp, cn, ((void*)0));
    return (error);
   }
   frcn = dep->de_fc[FC_LASTFC].fc_frcn + 1;
  }





  fc_setcache(dep, FC_LASTFC, frcn + got - 1, cn + got - 1);

  if ((flags & DE_CLEAR) &&
      (dep->de_Attributes & ATTR_DIRECTORY)) {
   while (got-- > 0) {
    bp = getblk(pmp->pm_devvp,
        cntobn(pmp, cn++),
        pmp->pm_bpcluster, 0, 0, 0);
    clrbuf(bp);
    if (bpp) {
     *bpp = bp;
     bpp = ((void*)0);
    } else {
     bdwrite(bp);
    }
   }
  }
 }

 return (0);
}
