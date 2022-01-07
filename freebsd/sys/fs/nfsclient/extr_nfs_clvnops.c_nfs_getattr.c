
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct vop_getattr_args {int a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {int va_mtime; int va_filerev; int va_bytes; int va_rdev; int va_flags; int va_gen; int va_ctime; int va_atime; int va_blocksize; int va_size; int va_fileid; int va_fsid; int va_gid; int va_uid; int va_nlink; int va_mode; int va_type; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_flag; } ;
typedef int gid_t ;
struct TYPE_2__ {int accesscache_misses; } ;


 int NACC ;
 int NCHG ;
 int NFSACCESS_ALL ;
 int NFSINCRGLOBAL (int ) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV34 (struct vnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NUPD ;
 struct nfsnode* VTONFS (struct vnode*) ;
 struct thread* curthread ;
 scalar_t__ ncl_getattrcache (struct vnode*,struct vattr*) ;
 int nfs34_access_otw (struct vnode*,int ,struct thread*,int ,int *) ;
 scalar_t__ nfs_prime_access_cache ;
 scalar_t__ nfsaccess_cache_timeout ;
 int nfscl_deleggetmodtime (struct vnode*,int *) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,struct vattr*,int *,int ,int ) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfsrpc_getattr (struct vnode*,int ,struct thread*,struct nfsvattr*,int *) ;
 TYPE_1__ nfsstatsv1 ;

__attribute__((used)) static int
nfs_getattr(struct vop_getattr_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct thread *td = curthread;
 struct nfsnode *np = VTONFS(vp);
 int error = 0;
 struct nfsvattr nfsva;
 struct vattr *vap = ap->a_vap;
 struct vattr vattr;




 NFSLOCKNODE(np);
 if (np->n_flag & (NACC | NUPD))
  np->n_flag |= NCHG;
 NFSUNLOCKNODE(np);



 if (ncl_getattrcache(vp, &vattr) == 0) {
  vap->va_type = vattr.va_type;
  vap->va_mode = vattr.va_mode;
  vap->va_nlink = vattr.va_nlink;
  vap->va_uid = vattr.va_uid;
  vap->va_gid = vattr.va_gid;
  vap->va_fsid = vattr.va_fsid;
  vap->va_fileid = vattr.va_fileid;
  vap->va_size = vattr.va_size;
  vap->va_blocksize = vattr.va_blocksize;
  vap->va_atime = vattr.va_atime;
  vap->va_mtime = vattr.va_mtime;
  vap->va_ctime = vattr.va_ctime;
  vap->va_gen = vattr.va_gen;
  vap->va_flags = vattr.va_flags;
  vap->va_rdev = vattr.va_rdev;
  vap->va_bytes = vattr.va_bytes;
  vap->va_filerev = vattr.va_filerev;




  nfscl_deleggetmodtime(vp, &vap->va_mtime);
  return (0);
 }

 if (NFS_ISV34(vp) && nfs_prime_access_cache &&
     nfsaccess_cache_timeout > 0) {
  NFSINCRGLOBAL(nfsstatsv1.accesscache_misses);
  nfs34_access_otw(vp, NFSACCESS_ALL, td, ap->a_cred, ((void*)0));
  if (ncl_getattrcache(vp, ap->a_vap) == 0) {
   nfscl_deleggetmodtime(vp, &ap->a_vap->va_mtime);
   return (0);
  }
 }
 error = nfsrpc_getattr(vp, ap->a_cred, td, &nfsva, ((void*)0));
 if (!error)
  error = nfscl_loadattrcache(&vp, &nfsva, vap, ((void*)0), 0, 0);
 if (!error) {




  nfscl_deleggetmodtime(vp, &vap->va_mtime);
 } else if (NFS_ISV4(vp)) {
  error = nfscl_maperr(td, error, (uid_t)0, (gid_t)0);
 }
 return (error);
}
