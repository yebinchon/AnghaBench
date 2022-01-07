
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int ;
struct vnode {int v_iflag; } ;
struct thread {int dummy; } ;
struct nfsnode {int dummy; } ;
struct nfsfh {int nfh_len; int * nfh_fh; } ;
struct mount {int dummy; } ;


 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 int ENOENT ;
 int FNV1_32_INIT ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 int M_NFSFH ;
 int M_WAITOK ;
 scalar_t__ NFSCL_FORCEDISM (struct mount*) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int VI_DOOMED ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int bcopy (int *,int *,int) ;
 int fnv_32_buf (int *,int,int ) ;
 int free (struct nfsfh*,int ) ;
 struct nfsfh* malloc (int,int ,int ) ;
 int newnfs_vncmpf ;
 int vfs_hash_get (struct mount*,int ,int,struct thread*,struct vnode**,int ,struct nfsfh*) ;
 int vfs_hash_ref (struct mount*,int ,struct thread*,struct vnode**,int ,struct nfsfh*) ;
 int vrele (struct vnode*) ;

int
nfscl_ngetreopen(struct mount *mntp, u_int8_t *fhp, int fhsize,
    struct thread *td, struct nfsnode **npp)
{
 struct vnode *nvp;
 u_int hash;
 struct nfsfh *nfhp;
 int error;

 *npp = ((void*)0);

 if (NFSCL_FORCEDISM(mntp))
  return (EINTR);
 nfhp = malloc(sizeof (struct nfsfh) + fhsize,
     M_NFSFH, M_WAITOK);
 bcopy(fhp, &nfhp->nfh_fh[0], fhsize);
 nfhp->nfh_len = fhsize;

 hash = fnv_32_buf(fhp, fhsize, FNV1_32_INIT);




 error = vfs_hash_get(mntp, hash, (LK_EXCLUSIVE | LK_NOWAIT), td, &nvp,
     newnfs_vncmpf, nfhp);
 if (error == 0 && nvp != ((void*)0)) {
  NFSVOPUNLOCK(nvp, 0);
 } else if (error == EBUSY) {






  if (NFSCL_FORCEDISM(mntp))
   error = EINTR;
  else {
   vfs_hash_ref(mntp, hash, td, &nvp, newnfs_vncmpf, nfhp);
   if (nvp == ((void*)0)) {
    error = ENOENT;
   } else if ((nvp->v_iflag & VI_DOOMED) != 0) {
    error = ENOENT;
    vrele(nvp);
   } else {
    error = 0;
   }
  }
 }
 free(nfhp, M_NFSFH);
 if (error)
  return (error);
 if (nvp != ((void*)0)) {
  *npp = VTONFS(nvp);
  return (0);
 }
 return (EINVAL);
}
