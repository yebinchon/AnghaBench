
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_rename_args {struct vnode* a_tdvp; struct vnode* a_fvp; struct componentname* a_fcnp; struct componentname* a_tcnp; struct vnode* a_fdvp; struct vnode* a_tvp; } ;
struct vnode {scalar_t__ v_mount; scalar_t__ v_type; } ;
struct nfsv4node {int n4_namelen; scalar_t__ n4_fhlen; int n4_data; } ;
struct nfsnode {struct nfsv4node* n_v4; TYPE_1__* n_fhp; int n_sillyrename; } ;
struct componentname {int cn_flags; int cn_namelen; int cn_nameptr; int cn_thread; int cn_cred; } ;
struct TYPE_2__ {int nfh_len; int nfh_fh; } ;


 int ENOENT ;
 int EXDEV ;
 int HASBUF ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int MNT_WAIT ;
 int M_NFSV4NODE ;
 int M_WAITOK ;
 int NFS4NODENAME (struct nfsv4node*) ;
 scalar_t__ NFSBCMP (int ,int ,int) ;
 int NFSBCOPY (int ,int ,int) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NFSVOPLOCK (struct vnode*,int ) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 scalar_t__ VDIR ;
 int VOP_FSYNC (struct vnode*,int ,int ) ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int bcopy (int ,char*,int) ;
 int cache_purge (struct vnode*) ;
 int free (struct nfsv4node*,int ) ;
 struct nfsv4node* malloc (int,int ,int ) ;
 int nfs_renamerpc (struct vnode*,struct vnode*,int ,int,struct vnode*,struct vnode*,int ,int,int ,int ) ;
 int nfs_sillyrename (struct vnode*,struct vnode*,struct componentname*) ;
 int printf (char*,...) ;
 int vput (struct vnode*) ;
 int vrefcnt (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
nfs_rename(struct vop_rename_args *ap)
{
 struct vnode *fvp = ap->a_fvp;
 struct vnode *tvp = ap->a_tvp;
 struct vnode *fdvp = ap->a_fdvp;
 struct vnode *tdvp = ap->a_tdvp;
 struct componentname *tcnp = ap->a_tcnp;
 struct componentname *fcnp = ap->a_fcnp;
 struct nfsnode *fnp = VTONFS(ap->a_fvp);
 struct nfsnode *tdnp = VTONFS(ap->a_tdvp);
 struct nfsv4node *newv4 = ((void*)0);
 int error;

 KASSERT((tcnp->cn_flags & HASBUF) != 0 &&
     (fcnp->cn_flags & HASBUF) != 0, ("nfs_rename: no name"));

 if ((fvp->v_mount != tdvp->v_mount) ||
     (tvp && (fvp->v_mount != tvp->v_mount))) {
  error = EXDEV;
  goto out;
 }

 if (fvp == tvp) {
  printf("nfs_rename: fvp == tvp (can't happen)\n");
  error = 0;
  goto out;
 }
 if ((error = NFSVOPLOCK(fvp, LK_EXCLUSIVE)) != 0)
  goto out;
 error = VOP_FSYNC(fvp, MNT_WAIT, fcnp->cn_thread);
 NFSVOPUNLOCK(fvp, 0);
 if (!error && tvp)
  error = VOP_FSYNC(tvp, MNT_WAIT, tcnp->cn_thread);
 if (error)
  goto out;






 if (tvp && vrefcnt(tvp) > 1 && !VTONFS(tvp)->n_sillyrename &&
  tvp->v_type != VDIR && !nfs_sillyrename(tdvp, tvp, tcnp)) {
  vput(tvp);
  tvp = ((void*)0);
 }

 error = nfs_renamerpc(fdvp, fvp, fcnp->cn_nameptr, fcnp->cn_namelen,
     tdvp, tvp, tcnp->cn_nameptr, tcnp->cn_namelen, tcnp->cn_cred,
     tcnp->cn_thread);

 if (error == 0 && NFS_ISV4(tdvp)) {




  newv4 = malloc(
      sizeof (struct nfsv4node) +
      tdnp->n_fhp->nfh_len + tcnp->cn_namelen - 1,
      M_NFSV4NODE, M_WAITOK);
  NFSLOCKNODE(tdnp);
  NFSLOCKNODE(fnp);
  if (fnp->n_v4 != ((void*)0) && fvp->v_type == VREG &&
      (fnp->n_v4->n4_namelen != tcnp->cn_namelen ||
        NFSBCMP(tcnp->cn_nameptr, NFS4NODENAME(fnp->n_v4),
        tcnp->cn_namelen) ||
        tdnp->n_fhp->nfh_len != fnp->n_v4->n4_fhlen ||
        NFSBCMP(tdnp->n_fhp->nfh_fh, fnp->n_v4->n4_data,
   tdnp->n_fhp->nfh_len))) {
   free(fnp->n_v4, M_NFSV4NODE);
   fnp->n_v4 = newv4;
   newv4 = ((void*)0);
   fnp->n_v4->n4_fhlen = tdnp->n_fhp->nfh_len;
   fnp->n_v4->n4_namelen = tcnp->cn_namelen;
   NFSBCOPY(tdnp->n_fhp->nfh_fh, fnp->n_v4->n4_data,
       tdnp->n_fhp->nfh_len);
   NFSBCOPY(tcnp->cn_nameptr,
       NFS4NODENAME(fnp->n_v4), tcnp->cn_namelen);
  }
  NFSUNLOCKNODE(tdnp);
  NFSUNLOCKNODE(fnp);
  if (newv4 != ((void*)0))
   free(newv4, M_NFSV4NODE);
 }

 if (fvp->v_type == VDIR) {
  if (tvp != ((void*)0) && tvp->v_type == VDIR)
   cache_purge(tdvp);
  cache_purge(fdvp);
 }

out:
 if (tdvp == tvp)
  vrele(tdvp);
 else
  vput(tdvp);
 if (tvp)
  vput(tvp);
 vrele(fdvp);
 vrele(fvp);



 if (error == ENOENT)
  error = 0;
 return (error);
}
