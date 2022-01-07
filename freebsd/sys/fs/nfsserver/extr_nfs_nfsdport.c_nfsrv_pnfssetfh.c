
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct pnfsdsfile {int dsf_fh; } ;
struct nfsnode {TYPE_1__* n_fhp; } ;
struct TYPE_2__ {int nfh_fh; } ;
typedef int NFSPROC_T ;


 int EXTATTR_NAMESPACE_SYSTEM ;
 int IO_NODELOCKED ;
 scalar_t__ LK_EXCLUSIVE ;
 int NFSBCOPY (int ,int *,int ) ;
 int NFSD_DEBUG (int,char*,int) ;
 scalar_t__ NFSVOPISLOCKED (struct vnode*) ;
 int NFSX_MYFH ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int vn_extattr_set (struct vnode*,int ,int ,char*,int,char*,int *) ;

__attribute__((used)) static void
nfsrv_pnfssetfh(struct vnode *vp, struct pnfsdsfile *pf, char *devid,
    char *fnamep, struct vnode *nvp, NFSPROC_T *p)
{
 struct nfsnode *np;
 int ret;

 np = VTONFS(nvp);
 NFSBCOPY(np->n_fhp->nfh_fh, &pf->dsf_fh, NFSX_MYFH);







 if (devid == ((void*)0) && fnamep == ((void*)0) && NFSVOPISLOCKED(vp) ==
     LK_EXCLUSIVE)
  ret = vn_extattr_set(vp, IO_NODELOCKED,
      EXTATTR_NAMESPACE_SYSTEM, "pnfsd.dsfile", sizeof(*pf),
      (char *)pf, p);
 NFSD_DEBUG(4, "eo nfsrv_pnfssetfh=%d\n", ret);
}
