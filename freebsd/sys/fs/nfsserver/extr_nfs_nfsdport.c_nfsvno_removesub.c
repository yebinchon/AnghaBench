
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsexstuff {int dummy; } ;
struct TYPE_2__ {int cn_flags; } ;
struct nameidata {TYPE_1__ ni_cnd; struct vnode* ni_dvp; struct vnode* ni_vp; } ;
typedef int fhandle_t ;


 int NFSDEV_MAXMIRRORS ;
 int NFSERR_ISDIR ;
 int NFSEXITCODE (int) ;
 int PNFS_FILENAME_LEN ;
 int SAVENAME ;
 scalar_t__ VDIR ;
 int VOP_REMOVE (struct vnode*,struct vnode*,TYPE_1__*) ;
 int nfsrv_checkremove (struct vnode*,int,struct thread*) ;
 int nfsrv_pnfsremove (struct vnode**,int,char*,int *,struct thread*) ;
 int nfsrv_pnfsremovesetup (struct vnode*,struct thread*,struct vnode**,int*,char*,int *) ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
nfsvno_removesub(struct nameidata *ndp, int is_v4, struct ucred *cred,
    struct thread *p, struct nfsexstuff *exp)
{
 struct vnode *vp, *dsdvp[NFSDEV_MAXMIRRORS];
 int error = 0, mirrorcnt;
 char fname[PNFS_FILENAME_LEN + 1];
 fhandle_t fh;

 vp = ndp->ni_vp;
 dsdvp[0] = ((void*)0);
 if (vp->v_type == VDIR)
  error = NFSERR_ISDIR;
 else if (is_v4)
  error = nfsrv_checkremove(vp, 1, p);
 if (error == 0)
  nfsrv_pnfsremovesetup(vp, p, dsdvp, &mirrorcnt, fname, &fh);
 if (!error)
  error = VOP_REMOVE(ndp->ni_dvp, vp, &ndp->ni_cnd);
 if (error == 0 && dsdvp[0] != ((void*)0))
  nfsrv_pnfsremove(dsdvp, mirrorcnt, fname, &fh, p);
 if (ndp->ni_dvp == vp)
  vrele(ndp->ni_dvp);
 else
  vput(ndp->ni_dvp);
 vput(vp);
 if ((ndp->ni_cnd.cn_flags & SAVENAME) != 0)
  nfsvno_relpathbuf(ndp);
 NFSEXITCODE(error);
 return (error);
}
