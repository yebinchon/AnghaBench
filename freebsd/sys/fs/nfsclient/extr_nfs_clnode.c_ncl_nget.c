
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int ;
struct TYPE_2__ {scalar_t__ bo_bsize; int * bo_ops; } ;
struct vnode {scalar_t__ v_type; int v_vflag; int v_vnlock; struct nfsnode* v_data; TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct nfsnode {struct nfsfh* n_fhp; int n_excl; int n_mtx; struct vnode* n_vnode; } ;
struct nfsmount {int nm_fhsize; int nm_fh; } ;
struct nfsfh {int nfh_len; int * nfh_fh; } ;
struct mount {int dummy; } ;


 int FNV1_32_INIT ;
 int KASSERT (int,char*) ;
 int LK_CANRECURSE ;
 int LK_EXCLUSIVE ;
 int LK_NOSHARE ;
 int LK_NOWITNESS ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int M_NFSFH ;
 int M_WAITOK ;
 int M_ZERO ;
 int PVFS ;
 scalar_t__ VDIR ;
 struct nfsmount* VFSTONFS (struct mount*) ;
 int VLKTIMEOUT ;
 scalar_t__ VNON ;
 int VN_LOCK_AREC (struct vnode*) ;
 int VN_LOCK_ASHARE (struct vnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int VV_ROOT ;
 int VV_VMSIZEVNLOCK ;
 int bcmp (int *,int ,int) ;
 int bcopy (int *,int *,int) ;
 int buf_ops_newnfs ;
 struct thread* curthread ;
 int fnv_32_buf (int *,int,int ) ;
 int free (struct nfsfh*,int ) ;
 int getnewvnode (int ,struct mount*,int *,struct vnode**) ;
 int insmntque (struct vnode*,struct mount*) ;
 int lockdestroy (int *) ;
 int lockinit (int *,int ,char*,int ,int) ;
 int lockmgr (int ,int,int *) ;
 void* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int) ;
 int newnfs_vncmpf ;
 int newnfs_vnodeops ;
 int newnfsnode_zone ;
 int nfs_vnode_tag ;
 struct nfsnode* uma_zalloc (int ,int) ;
 int uma_zfree (int ,struct nfsnode*) ;
 int vfs_hash_get (struct mount*,int ,int,struct thread*,struct vnode**,int ,struct nfsfh*) ;
 int vfs_hash_insert (struct vnode*,int ,int,struct thread*,struct vnode**,int ,struct nfsfh*) ;

int
ncl_nget(struct mount *mntp, u_int8_t *fhp, int fhsize, struct nfsnode **npp,
    int lkflags)
{
 struct thread *td = curthread;
 struct nfsnode *np;
 struct vnode *vp;
 struct vnode *nvp;
 int error;
 u_int hash;
 struct nfsmount *nmp;
 struct nfsfh *nfhp;

 nmp = VFSTONFS(mntp);
 *npp = ((void*)0);

 hash = fnv_32_buf(fhp, fhsize, FNV1_32_INIT);

 nfhp = malloc(sizeof (struct nfsfh) + fhsize,
     M_NFSFH, M_WAITOK);
 bcopy(fhp, &nfhp->nfh_fh[0], fhsize);
 nfhp->nfh_len = fhsize;
 error = vfs_hash_get(mntp, hash, lkflags,
     td, &nvp, newnfs_vncmpf, nfhp);
 free(nfhp, M_NFSFH);
 if (error)
  return (error);
 if (nvp != ((void*)0)) {
  *npp = VTONFS(nvp);
  return (0);
 }
 np = uma_zalloc(newnfsnode_zone, M_WAITOK | M_ZERO);

 error = getnewvnode(nfs_vnode_tag, mntp, &newnfs_vnodeops, &nvp);
 if (error) {
  uma_zfree(newnfsnode_zone, np);
  return (error);
 }
 vp = nvp;
 KASSERT(vp->v_bufobj.bo_bsize != 0, ("ncl_nget: bo_bsize == 0"));
 vp->v_bufobj.bo_ops = &buf_ops_newnfs;
 vp->v_data = np;
 np->n_vnode = vp;






 mtx_init(&np->n_mtx, "NEWNFSnode lock", ((void*)0), MTX_DEF | MTX_DUPOK);
 lockinit(&np->n_excl, PVFS, "nfsupg", VLKTIMEOUT, LK_NOSHARE |
     LK_CANRECURSE);




 lockmgr(vp->v_vnlock, LK_EXCLUSIVE | LK_NOWITNESS, ((void*)0));
 VN_LOCK_AREC(vp);
 VN_LOCK_ASHARE(vp);




 if ((fhsize == nmp->nm_fhsize) &&
     !bcmp(fhp, nmp->nm_fh, fhsize)) {
  if (vp->v_type == VNON)
   vp->v_type = VDIR;
  vp->v_vflag |= VV_ROOT;
 }

 vp->v_vflag |= VV_VMSIZEVNLOCK;

 np->n_fhp = malloc(sizeof (struct nfsfh) + fhsize,
     M_NFSFH, M_WAITOK);
 bcopy(fhp, np->n_fhp->nfh_fh, fhsize);
 np->n_fhp->nfh_len = fhsize;
 error = insmntque(vp, mntp);
 if (error != 0) {
  *npp = ((void*)0);
  free(np->n_fhp, M_NFSFH);
  mtx_destroy(&np->n_mtx);
  lockdestroy(&np->n_excl);
  uma_zfree(newnfsnode_zone, np);
  return (error);
 }
 error = vfs_hash_insert(vp, hash, lkflags,
     td, &nvp, newnfs_vncmpf, np->n_fhp);
 if (error)
  return (error);
 if (nvp != ((void*)0)) {
  *npp = VTONFS(nvp);

  return (0);
 }
 *npp = np;

 return (0);
}
