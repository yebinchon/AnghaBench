
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u_int ;
struct vnode {int v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {scalar_t__ na_type; } ;
struct nfsv4node {int dummy; } ;
struct nfsnode {struct nfsfh* n_fhp; struct nfsfh* n_v4; } ;
struct nfsfh {int n4_namelen; int nfh_len; int n4_fhlen; char* nfh_fh; int n4_data; } ;
struct componentname {char* cn_nameptr; int cn_namelen; } ;
typedef int gid_t ;


 int ENOENT ;
 int FNV1_32_INIT ;
 int LK_EXCLUSIVE ;
 int M_NFSFH ;
 int M_NFSV4NODE ;
 int M_WAITOK ;
 int NFS4NODENAME (struct nfsfh*) ;
 scalar_t__ NFSBCMP (char*,int ,int) ;
 int NFSBCOPY (char*,int ,int) ;
 struct vnode* NFSTOV (struct nfsnode*) ;
 scalar_t__ NFS_CMPFH (struct nfsnode*,char*,int) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int VREF (struct vnode*) ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int bcopy (char*,char*,int) ;
 int fnv_32_buf (char*,int,int ) ;
 int free (struct nfsfh*,int ) ;
 struct nfsfh* malloc (int,int ,int ) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfscl_nget (int ,struct vnode*,struct nfsfh*,struct componentname*,struct thread*,struct nfsnode**,int *,int ) ;
 int nfsrpc_lookup (struct vnode*,char*,int,struct ucred*,struct thread*,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int *) ;
 int printf (char*,char*) ;
 int vfs_hash_rehash (struct vnode*,int ) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
nfs_lookitup(struct vnode *dvp, char *name, int len, struct ucred *cred,
    struct thread *td, struct nfsnode **npp)
{
 struct vnode *newvp = ((void*)0), *vp;
 struct nfsnode *np, *dnp = VTONFS(dvp);
 struct nfsfh *nfhp, *onfhp;
 struct nfsvattr nfsva, dnfsva;
 struct componentname cn;
 int error = 0, attrflag, dattrflag;
 u_int hash;

 error = nfsrpc_lookup(dvp, name, len, cred, td, &dnfsva, &nfsva,
     &nfhp, &attrflag, &dattrflag, ((void*)0));
 if (dattrflag)
  (void) nfscl_loadattrcache(&dvp, &dnfsva, ((void*)0), ((void*)0), 0, 1);
 if (npp && !error) {
  if (*npp != ((void*)0)) {
      np = *npp;
      vp = NFSTOV(np);




      if (np->n_v4 != ((void*)0) && nfsva.na_type == VREG &&
   (np->n_v4->n4_namelen != len ||
    NFSBCMP(name, NFS4NODENAME(np->n_v4), len) ||
    dnp->n_fhp->nfh_len != np->n_v4->n4_fhlen ||
    NFSBCMP(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
    dnp->n_fhp->nfh_len))) {
       free(np->n_v4, M_NFSV4NODE);
       np->n_v4 = malloc(
    sizeof (struct nfsv4node) +
    dnp->n_fhp->nfh_len + len - 1,
    M_NFSV4NODE, M_WAITOK);
       np->n_v4->n4_fhlen = dnp->n_fhp->nfh_len;
       np->n_v4->n4_namelen = len;
       NFSBCOPY(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
    dnp->n_fhp->nfh_len);
       NFSBCOPY(name, NFS4NODENAME(np->n_v4), len);
      }
      hash = fnv_32_buf(nfhp->nfh_fh, nfhp->nfh_len,
   FNV1_32_INIT);
      onfhp = np->n_fhp;



      vfs_hash_rehash(vp, hash);
      np->n_fhp = nfhp;
      if (onfhp != ((void*)0))
   free(onfhp, M_NFSFH);
      newvp = NFSTOV(np);
  } else if (NFS_CMPFH(dnp, nfhp->nfh_fh, nfhp->nfh_len)) {
      free(nfhp, M_NFSFH);
      VREF(dvp);
      newvp = dvp;
  } else {
      cn.cn_nameptr = name;
      cn.cn_namelen = len;
      error = nfscl_nget(dvp->v_mount, dvp, nfhp, &cn, td,
   &np, ((void*)0), LK_EXCLUSIVE);
      if (error)
   return (error);
      newvp = NFSTOV(np);
  }
  if (!attrflag && *npp == ((void*)0)) {
   if (newvp == dvp)
    vrele(newvp);
   else
    vput(newvp);
   return (ENOENT);
  }
  if (attrflag)
   (void) nfscl_loadattrcache(&newvp, &nfsva, ((void*)0), ((void*)0),
       0, 1);
 }
 if (npp && *npp == ((void*)0)) {
  if (error) {
   if (newvp) {
    if (newvp == dvp)
     vrele(newvp);
    else
     vput(newvp);
   }
  } else
   *npp = np;
 }
 if (error && NFS_ISV4(dvp))
  error = nfscl_maperr(td, error, (uid_t)0, (gid_t)0);
 return (error);
}
