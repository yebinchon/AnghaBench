
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct TYPE_3__ {int cn_lkflags; int cn_flags; char* cn_nameptr; int cn_namelen; int * cn_thread; struct ucred* cn_cred; int cn_nameiop; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;
typedef int NFSPROC_T ;


 int DELETE ;
 int ISLASTCN ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int NAME_MAX ;
 int NFSD_DEBUG (int,char*,...) ;
 int NFSVOPLOCK (struct vnode*,int) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int SAVENAME ;
 int VOP_LOOKUP (struct vnode*,struct vnode**,TYPE_1__*) ;
 int VOP_REMOVE (struct vnode*,struct vnode*,TYPE_1__*) ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int nfsvno_setpathbuf (struct nameidata*,char**,int **) ;
 int printf (char*,int) ;
 int strlcpy (char*,char*,int ) ;
 int strlen (char*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
nfsrv_dsremove(struct vnode *dvp, char *fname, struct ucred *tcred,
    NFSPROC_T *p)
{
 struct nameidata named;
 struct vnode *nvp;
 char *bufp;
 u_long *hashp;
 int error;

 error = NFSVOPLOCK(dvp, LK_EXCLUSIVE);
 if (error != 0)
  return (error);
 named.ni_cnd.cn_nameiop = DELETE;
 named.ni_cnd.cn_lkflags = LK_EXCLUSIVE | LK_RETRY;
 named.ni_cnd.cn_cred = tcred;
 named.ni_cnd.cn_thread = p;
 named.ni_cnd.cn_flags = ISLASTCN | LOCKPARENT | LOCKLEAF | SAVENAME;
 nfsvno_setpathbuf(&named, &bufp, &hashp);
 named.ni_cnd.cn_nameptr = bufp;
 named.ni_cnd.cn_namelen = strlen(fname);
 strlcpy(bufp, fname, NAME_MAX);
 NFSD_DEBUG(4, "nfsrv_pnfsremove: filename=%s\n", bufp);
 error = VOP_LOOKUP(dvp, &nvp, &named.ni_cnd);
 NFSD_DEBUG(4, "nfsrv_pnfsremove: aft LOOKUP=%d\n", error);
 if (error == 0) {
  error = VOP_REMOVE(dvp, nvp, &named.ni_cnd);
  vput(nvp);
 }
 NFSVOPUNLOCK(dvp, 0);
 nfsvno_relpathbuf(&named);
 if (error != 0)
  printf("pNFS: nfsrv_pnfsremove failed=%d\n", error);
 return (error);
}
