
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_create_args {int * a_vpp; int a_dvp; int a_vap; struct componentname* a_cnp; } ;
struct timespec {int dummy; } ;
struct denode {scalar_t__ de_StartCluster; scalar_t__ de_fndoffset; scalar_t__ de_FileSize; int de_flag; int de_pmp; scalar_t__ de_LowerCase; int de_Attributes; int de_Name; } ;
struct componentname {int cn_flags; } ;
typedef int ndirent ;


 int ATTR_ARCHIVE ;
 int DETIMES (struct denode*,struct timespec*,struct timespec*,struct timespec*) ;
 int DETOV (struct denode*) ;
 int DE_ACCESS ;
 int DE_CREATE ;
 int DE_UPDATE ;
 int ENOSPC ;
 int HASBUF ;
 int MAKEENTRY ;
 scalar_t__ MSDOSFSROOT ;
 struct denode* VTODE (int ) ;
 int cache_enter (int ,int ,struct componentname*) ;
 int createde (struct denode*,struct denode*,struct denode**,struct componentname*) ;
 int memset (struct denode*,int ,int) ;
 int panic (char*) ;
 int printf (char*,struct componentname*,int ) ;
 int uniqdosname (struct denode*,struct componentname*,int ) ;
 int vfs_timestamp (struct timespec*) ;

__attribute__((used)) static int
msdosfs_create(struct vop_create_args *ap)
{
 struct componentname *cnp = ap->a_cnp;
 struct denode ndirent;
 struct denode *dep;
 struct denode *pdep = VTODE(ap->a_dvp);
 struct timespec ts;
 int error;
 if (pdep->de_StartCluster == MSDOSFSROOT
     && pdep->de_fndoffset >= pdep->de_FileSize) {
  error = ENOSPC;
  goto bad;
 }
 memset(&ndirent, 0, sizeof(ndirent));
 error = uniqdosname(pdep, cnp, ndirent.de_Name);
 if (error)
  goto bad;

 ndirent.de_Attributes = ATTR_ARCHIVE;
 ndirent.de_LowerCase = 0;
 ndirent.de_StartCluster = 0;
 ndirent.de_FileSize = 0;
 ndirent.de_pmp = pdep->de_pmp;
 ndirent.de_flag = DE_ACCESS | DE_CREATE | DE_UPDATE;
 vfs_timestamp(&ts);
 DETIMES(&ndirent, &ts, &ts, &ts);
 error = createde(&ndirent, pdep, &dep, cnp);
 if (error)
  goto bad;
 *ap->a_vpp = DETOV(dep);
 if ((cnp->cn_flags & MAKEENTRY) != 0)
  cache_enter(ap->a_dvp, *ap->a_vpp, cnp);
 return (0);

bad:
 return (error);
}
