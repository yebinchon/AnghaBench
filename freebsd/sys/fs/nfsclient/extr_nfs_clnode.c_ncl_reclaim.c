
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {int a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int * v_data; } ;
struct nfsnode {int n_excl; int n_mtx; struct nfsdmap* n_v4; struct nfsdmap* n_fhp; int * n_writecred; int n_cookies; } ;
struct nfsdmap {int dummy; } ;


 struct nfsdmap* LIST_FIRST (int *) ;
 struct nfsdmap* LIST_NEXT (struct nfsdmap*,int ) ;
 int M_NFSDIROFF ;
 int M_NFSFH ;
 int M_NFSV4NODE ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 scalar_t__ VDIR ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int crfree (int *) ;
 int free (struct nfsdmap*,int ) ;
 int lockdestroy (int *) ;
 int mtx_destroy (int *) ;
 int ncl_releasesillyrename (struct vnode*,int ) ;
 int ndm_list ;
 int newnfsnode_zone ;
 int nfs_reclaim_p (struct vop_reclaim_args*) ;
 int nfscl_reclaimnode (struct vnode*) ;
 int nfsrpc_close (struct vnode*,int,int ) ;
 int uma_zfree (int ,int *) ;
 int vfs_hash_remove (struct vnode*) ;

int
ncl_reclaim(struct vop_reclaim_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = VTONFS(vp);
 struct nfsdmap *dp, *dp2;





 if (nfs_reclaim_p != ((void*)0))
  nfs_reclaim_p(ap);

 NFSLOCKNODE(np);
 ncl_releasesillyrename(vp, ap->a_td);
 NFSUNLOCKNODE(np);

 if (NFS_ISV4(vp) && vp->v_type == VREG)






  (void) nfsrpc_close(vp, 1, ap->a_td);

 vfs_hash_remove(vp);





 if (vp->v_type == VREG)
  nfscl_reclaimnode(vp);






 if (vp->v_type == VDIR) {
  dp = LIST_FIRST(&np->n_cookies);
  while (dp) {
   dp2 = dp;
   dp = LIST_NEXT(dp, ndm_list);
   free(dp2, M_NFSDIROFF);
  }
 }
 if (np->n_writecred != ((void*)0))
  crfree(np->n_writecred);
 free(np->n_fhp, M_NFSFH);
 if (np->n_v4 != ((void*)0))
  free(np->n_v4, M_NFSV4NODE);
 mtx_destroy(&np->n_mtx);
 lockdestroy(&np->n_excl);
 uma_zfree(newnfsnode_zone, vp->v_data);
 vp->v_data = ((void*)0);
 return (0);
}
