
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ bo_bsize; int * bo_ops; } ;
struct vnode {int v_iflag; scalar_t__ v_type; int v_vnlock; int v_vflag; struct nfsnode* v_data; TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct nfsv4node {scalar_t__ nfh_len; scalar_t__ n4_namelen; scalar_t__ n4_fhlen; int n4_data; int nfh_fh; } ;
struct nfsnode {struct nfsv4node* n_v4; int n_excl; int n_mtx; struct nfsv4node* n_fhp; struct vnode* n_vnode; } ;
struct nfsmount {int nm_flag; scalar_t__ nm_fhsize; int nm_fh; } ;
struct nfsfh {scalar_t__ nfh_len; scalar_t__ n4_namelen; scalar_t__ n4_fhlen; int n4_data; int nfh_fh; } ;
struct mount {int dummy; } ;
struct componentname {scalar_t__ cn_namelen; int cn_nameptr; } ;


 int ENOENT ;
 int FNV1_32_INIT ;
 int KASSERT (int,char*) ;
 int LK_CANRECURSE ;
 int LK_EXCLUSIVE ;
 int LK_NOSHARE ;
 int LK_NOWITNESS ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int M_NFSFH ;
 int M_NFSV4NODE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFS4NODENAME (struct nfsv4node*) ;
 scalar_t__ NFSBCMP (int ,int ,scalar_t__) ;
 int NFSBCOPY (int ,int ,scalar_t__) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSMNT_NFSV4 ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int PVFS ;
 scalar_t__ VDIR ;
 struct nfsmount* VFSTONFS (struct mount*) ;
 int VI_DOOMED ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VLKTIMEOUT ;
 scalar_t__ VNON ;
 int VN_LOCK_AREC (struct vnode*) ;
 int VN_LOCK_ASHARE (struct vnode*) ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int VV_ROOT ;
 int VV_VMSIZEVNLOCK ;
 int bcmp (int ,int ,scalar_t__) ;
 int buf_ops_newnfs ;
 int fnv_32_buf (int ,scalar_t__,int ) ;
 int free (struct nfsv4node*,int ) ;
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
 int vfs_hash_get (struct mount*,int ,int,struct thread*,struct vnode**,int ,struct nfsv4node*) ;
 int vfs_hash_insert (struct vnode*,int ,int,struct thread*,struct vnode**,int ,struct nfsv4node*) ;
 int vrele (struct vnode*) ;

int
nfscl_nget(struct mount *mntp, struct vnode *dvp, struct nfsfh *nfhp,
    struct componentname *cnp, struct thread *td, struct nfsnode **npp,
    void *stuff, int lkflags)
{
 struct nfsnode *np, *dnp;
 struct vnode *vp, *nvp;
 struct nfsv4node *newd, *oldd;
 int error;
 u_int hash;
 struct nfsmount *nmp;

 nmp = VFSTONFS(mntp);
 dnp = VTONFS(dvp);
 *npp = ((void*)0);

 hash = fnv_32_buf(nfhp->nfh_fh, nfhp->nfh_len, FNV1_32_INIT);

 error = vfs_hash_get(mntp, hash, lkflags,
     td, &nvp, newnfs_vncmpf, nfhp);
 if (error == 0 && nvp != ((void*)0)) {
  VI_LOCK(nvp);
  if ((nvp->v_iflag & VI_DOOMED)) {
   VI_UNLOCK(nvp);
   vrele(nvp);
   error = ENOENT;
  } else {
   VI_UNLOCK(nvp);
  }
 }
 if (error) {
  free(nfhp, M_NFSFH);
  return (error);
 }
 if (nvp != ((void*)0)) {
  np = VTONFS(nvp);




  oldd = newd = ((void*)0);
  if ((nmp->nm_flag & NFSMNT_NFSV4) && np->n_v4 != ((void*)0) &&
      nvp->v_type == VREG &&
      (np->n_v4->n4_namelen != cnp->cn_namelen ||
       NFSBCMP(cnp->cn_nameptr, NFS4NODENAME(np->n_v4),
       cnp->cn_namelen) ||
       dnp->n_fhp->nfh_len != np->n_v4->n4_fhlen ||
       NFSBCMP(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
       dnp->n_fhp->nfh_len))) {
      newd = malloc(
   sizeof (struct nfsv4node) + dnp->n_fhp->nfh_len +
   + cnp->cn_namelen - 1, M_NFSV4NODE, M_WAITOK);
      NFSLOCKNODE(np);
      if (newd != ((void*)0) && np->n_v4 != ((void*)0) && nvp->v_type == VREG
   && (np->n_v4->n4_namelen != cnp->cn_namelen ||
    NFSBCMP(cnp->cn_nameptr, NFS4NODENAME(np->n_v4),
    cnp->cn_namelen) ||
    dnp->n_fhp->nfh_len != np->n_v4->n4_fhlen ||
    NFSBCMP(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
    dnp->n_fhp->nfh_len))) {
   oldd = np->n_v4;
   np->n_v4 = newd;
   newd = ((void*)0);
   np->n_v4->n4_fhlen = dnp->n_fhp->nfh_len;
   np->n_v4->n4_namelen = cnp->cn_namelen;
   NFSBCOPY(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
       dnp->n_fhp->nfh_len);
   NFSBCOPY(cnp->cn_nameptr, NFS4NODENAME(np->n_v4),
       cnp->cn_namelen);
      }
      NFSUNLOCKNODE(np);
  }
  if (newd != ((void*)0))
   free(newd, M_NFSV4NODE);
  if (oldd != ((void*)0))
   free(oldd, M_NFSV4NODE);
  *npp = np;
  free(nfhp, M_NFSFH);
  return (0);
 }
 np = uma_zalloc(newnfsnode_zone, M_WAITOK | M_ZERO);

 error = getnewvnode(nfs_vnode_tag, mntp, &newnfs_vnodeops, &nvp);
 if (error) {
  uma_zfree(newnfsnode_zone, np);
  free(nfhp, M_NFSFH);
  return (error);
 }
 vp = nvp;
 KASSERT(vp->v_bufobj.bo_bsize != 0, ("nfscl_nget: bo_bsize == 0"));
 vp->v_bufobj.bo_ops = &buf_ops_newnfs;
 vp->v_data = np;
 np->n_vnode = vp;






 mtx_init(&np->n_mtx, "NEWNFSnode lock", ((void*)0), MTX_DEF | MTX_DUPOK);
 lockinit(&np->n_excl, PVFS, "nfsupg", VLKTIMEOUT, LK_NOSHARE |
     LK_CANRECURSE);





 if ((nfhp->nfh_len == nmp->nm_fhsize) &&
     !bcmp(nfhp->nfh_fh, nmp->nm_fh, nfhp->nfh_len)) {
  if (vp->v_type == VNON)
   vp->v_type = VDIR;
  vp->v_vflag |= VV_ROOT;
 }

 vp->v_vflag |= VV_VMSIZEVNLOCK;

 np->n_fhp = nfhp;




 if (nmp->nm_flag & NFSMNT_NFSV4) {
  np->n_v4 = malloc(sizeof (struct nfsv4node)
      + dnp->n_fhp->nfh_len + cnp->cn_namelen - 1, M_NFSV4NODE,
      M_WAITOK);
  np->n_v4->n4_fhlen = dnp->n_fhp->nfh_len;
  np->n_v4->n4_namelen = cnp->cn_namelen;
  NFSBCOPY(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
      dnp->n_fhp->nfh_len);
  NFSBCOPY(cnp->cn_nameptr, NFS4NODENAME(np->n_v4),
      cnp->cn_namelen);
 } else {
  np->n_v4 = ((void*)0);
 }




 lockmgr(vp->v_vnlock, LK_EXCLUSIVE | LK_NOWITNESS, ((void*)0));
 VN_LOCK_AREC(vp);
 VN_LOCK_ASHARE(vp);
 error = insmntque(vp, mntp);
 if (error != 0) {
  *npp = ((void*)0);
  mtx_destroy(&np->n_mtx);
  lockdestroy(&np->n_excl);
  free(nfhp, M_NFSFH);
  if (np->n_v4 != ((void*)0))
   free(np->n_v4, M_NFSV4NODE);
  uma_zfree(newnfsnode_zone, np);
  return (error);
 }
 error = vfs_hash_insert(vp, hash, lkflags,
     td, &nvp, newnfs_vncmpf, nfhp);
 if (error)
  return (error);
 if (nvp != ((void*)0)) {
  *npp = VTONFS(nvp);

  return (0);
 }
 *npp = np;

 return (0);
}
