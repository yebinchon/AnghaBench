
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vop_mkdir_args {int * a_vpp; int a_dvp; struct componentname* a_cnp; } ;
struct timespec {int dummy; } ;
struct msdosfsmount {int pm_bpcluster; int pm_rootdirblk; int pm_devvp; } ;
struct direntry {int deHighClust; int deMTime; int deMDate; int deADate; int deCHundredth; int deCTime; int deCDate; int deStartCluster; } ;
struct denode {scalar_t__ de_StartCluster; scalar_t__ de_fndoffset; scalar_t__ de_FileSize; int de_flag; int de_CDate; int de_CTime; int de_ADate; int de_MDate; int de_MTime; scalar_t__ de_LowerCase; int de_Attributes; int de_Name; int de_CHun; struct msdosfsmount* de_pmp; } ;
struct componentname {int cn_flags; } ;
struct buf {struct denode* b_data; } ;
typedef int ndirent ;


 int ATTR_DIRECTORY ;
 int CLUST_EOFE ;
 int DETIMES (struct denode*,struct timespec*,struct timespec*,struct timespec*) ;
 int DETOV (struct denode*) ;
 int DE_ACCESS ;
 int DE_CREATE ;
 int DE_UPDATE ;
 scalar_t__ DOINGASYNC (int ) ;
 int ENOSPC ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 int HASBUF ;
 scalar_t__ MSDOSFSROOT ;
 struct denode* VTODE (int ) ;
 int bdwrite (struct buf*) ;
 int bwrite (struct buf*) ;
 int clusteralloc (struct msdosfsmount*,int ,int,int ,int*,int *) ;
 int clusterfree (struct msdosfsmount*,int,int *) ;
 int cntobn (struct msdosfsmount*,int) ;
 int createde (struct denode*,struct denode*,struct denode**,struct componentname*) ;
 int dosdirtemplate ;
 struct buf* getblk (int ,int,int,int ,int ,int ) ;
 int memcpy (struct denode*,int *,int) ;
 int memset (struct denode*,int ,int) ;
 int panic (char*) ;
 int putushort (int ,int) ;
 int uniqdosname (struct denode*,struct componentname*,int ) ;
 int vfs_timestamp (struct timespec*) ;

__attribute__((used)) static int
msdosfs_mkdir(struct vop_mkdir_args *ap)
{
 struct componentname *cnp = ap->a_cnp;
 struct denode *dep;
 struct denode *pdep = VTODE(ap->a_dvp);
 struct direntry *denp;
 struct msdosfsmount *pmp = pdep->de_pmp;
 struct buf *bp;
 u_long newcluster, pcl;
 int bn;
 int error;
 struct denode ndirent;
 struct timespec ts;






 if (pdep->de_StartCluster == MSDOSFSROOT
     && pdep->de_fndoffset >= pdep->de_FileSize) {
  error = ENOSPC;
  goto bad2;
 }




 error = clusteralloc(pmp, 0, 1, CLUST_EOFE, &newcluster, ((void*)0));
 if (error)
  goto bad2;

 memset(&ndirent, 0, sizeof(ndirent));
 ndirent.de_pmp = pmp;
 ndirent.de_flag = DE_ACCESS | DE_CREATE | DE_UPDATE;
 vfs_timestamp(&ts);
 DETIMES(&ndirent, &ts, &ts, &ts);






 bn = cntobn(pmp, newcluster);

 bp = getblk(pmp->pm_devvp, bn, pmp->pm_bpcluster, 0, 0, 0);
 memset(bp->b_data, 0, pmp->pm_bpcluster);
 memcpy(bp->b_data, &dosdirtemplate, sizeof dosdirtemplate);
 denp = (struct direntry *)bp->b_data;
 putushort(denp[0].deStartCluster, newcluster);
 putushort(denp[0].deCDate, ndirent.de_CDate);
 putushort(denp[0].deCTime, ndirent.de_CTime);
 denp[0].deCHundredth = ndirent.de_CHun;
 putushort(denp[0].deADate, ndirent.de_ADate);
 putushort(denp[0].deMDate, ndirent.de_MDate);
 putushort(denp[0].deMTime, ndirent.de_MTime);
 pcl = pdep->de_StartCluster;





 if (FAT32(pmp) && pcl == pmp->pm_rootdirblk)
  pcl = MSDOSFSROOT;
 putushort(denp[1].deStartCluster, pcl);
 putushort(denp[1].deCDate, ndirent.de_CDate);
 putushort(denp[1].deCTime, ndirent.de_CTime);
 denp[1].deCHundredth = ndirent.de_CHun;
 putushort(denp[1].deADate, ndirent.de_ADate);
 putushort(denp[1].deMDate, ndirent.de_MDate);
 putushort(denp[1].deMTime, ndirent.de_MTime);
 if (FAT32(pmp)) {
  putushort(denp[0].deHighClust, newcluster >> 16);
  putushort(denp[1].deHighClust, pcl >> 16);
 }

 if (DOINGASYNC(ap->a_dvp))
  bdwrite(bp);
 else if ((error = bwrite(bp)) != 0)
  goto bad;
 error = uniqdosname(pdep, cnp, ndirent.de_Name);
 if (error)
  goto bad;

 ndirent.de_Attributes = ATTR_DIRECTORY;
 ndirent.de_LowerCase = 0;
 ndirent.de_StartCluster = newcluster;
 ndirent.de_FileSize = 0;
 error = createde(&ndirent, pdep, &dep, cnp);
 if (error)
  goto bad;
 *ap->a_vpp = DETOV(dep);
 return (0);

bad:
 clusterfree(pmp, newcluster, ((void*)0));
bad2:
 return (error);
}
