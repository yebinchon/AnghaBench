
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct pnfsdsfile {int dsf_filename; } ;
struct TYPE_2__ {int cn_lkflags; int cn_flags; char* cn_nameptr; int cn_namelen; int * cn_thread; struct ucred* cn_cred; int cn_nameiop; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;
typedef int NFSPROC_T ;


 int ISLASTCN ;
 int LK_RETRY ;
 int LK_SHARED ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int LOOKUP ;
 int NAME_MAX ;
 int NFSD_DEBUG (int,char*,...) ;
 int NFSFREECRED (struct ucred*) ;
 int SAVENAME ;
 int VOP_LOOKUP (struct vnode*,struct vnode**,TYPE_1__*) ;
 struct ucred* newnfs_getcred () ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int nfsvno_setpathbuf (struct nameidata*,char**,int **) ;
 int strlcpy (char*,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int
nfsrv_pnfslookupds(struct vnode *vp, struct vnode *dvp, struct pnfsdsfile *pf,
    struct vnode **nvpp, NFSPROC_T *p)
{
 struct nameidata named;
 struct ucred *tcred;
 char *bufp;
 u_long *hashp;
 struct vnode *nvp;
 int error;

 tcred = newnfs_getcred();
 named.ni_cnd.cn_nameiop = LOOKUP;
 named.ni_cnd.cn_lkflags = LK_SHARED | LK_RETRY;
 named.ni_cnd.cn_cred = tcred;
 named.ni_cnd.cn_thread = p;
 named.ni_cnd.cn_flags = ISLASTCN | LOCKPARENT | LOCKLEAF | SAVENAME;
 nfsvno_setpathbuf(&named, &bufp, &hashp);
 named.ni_cnd.cn_nameptr = bufp;
 named.ni_cnd.cn_namelen = strlen(pf->dsf_filename);
 strlcpy(bufp, pf->dsf_filename, NAME_MAX);
 NFSD_DEBUG(4, "nfsrv_pnfslookupds: filename=%s\n", bufp);
 error = VOP_LOOKUP(dvp, &nvp, &named.ni_cnd);
 NFSD_DEBUG(4, "nfsrv_pnfslookupds: aft LOOKUP=%d\n", error);
 NFSFREECRED(tcred);
 nfsvno_relpathbuf(&named);
 if (error == 0)
  *nvpp = nvp;
 NFSD_DEBUG(4, "eo nfsrv_pnfslookupds=%d\n", error);
 return (error);
}
