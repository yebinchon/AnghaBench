
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
typedef void* u_int32_t ;
struct vnode {int dummy; } ;
struct ucred {scalar_t__ cr_uid; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {TYPE_1__* n_accesscache; } ;
typedef int gid_t ;
struct TYPE_2__ {scalar_t__ uid; scalar_t__ stamp; void* mode; } ;


 int KDTRACE_NFS_ACCESSCACHE_LOAD_DONE (struct vnode*,scalar_t__,void*,int) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NFS_ACCESSCACHESIZE ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfsrpc_accessrpc (struct vnode*,int,struct ucred*,struct thread*,struct nfsvattr*,int*,void**,int *) ;
 void* time_second ;

__attribute__((used)) static int
nfs34_access_otw(struct vnode *vp, int wmode, struct thread *td,
    struct ucred *cred, u_int32_t *retmode)
{
 int error = 0, attrflag, i, lrupos;
 u_int32_t rmode;
 struct nfsnode *np = VTONFS(vp);
 struct nfsvattr nfsva;

 error = nfsrpc_accessrpc(vp, wmode, cred, td, &nfsva, &attrflag,
     &rmode, ((void*)0));
 if (attrflag)
  (void) nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0, 1);
 if (!error) {
  lrupos = 0;
  NFSLOCKNODE(np);
  for (i = 0; i < NFS_ACCESSCACHESIZE; i++) {
   if (np->n_accesscache[i].uid == cred->cr_uid) {
    np->n_accesscache[i].mode = rmode;
    np->n_accesscache[i].stamp = time_second;
    break;
   }
   if (i > 0 && np->n_accesscache[i].stamp <
       np->n_accesscache[lrupos].stamp)
    lrupos = i;
  }
  if (i == NFS_ACCESSCACHESIZE) {
   np->n_accesscache[lrupos].uid = cred->cr_uid;
   np->n_accesscache[lrupos].mode = rmode;
   np->n_accesscache[lrupos].stamp = time_second;
  }
  NFSUNLOCKNODE(np);
  if (retmode != ((void*)0))
   *retmode = rmode;
  KDTRACE_NFS_ACCESSCACHE_LOAD_DONE(vp, cred->cr_uid, rmode, 0);
 } else if (NFS_ISV4(vp)) {
  error = nfscl_maperr(td, error, (uid_t)0, (gid_t)0);
 }





 return (error);
}
