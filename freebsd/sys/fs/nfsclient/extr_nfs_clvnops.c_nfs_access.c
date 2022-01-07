
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
struct vop_access_args {int a_accmode; TYPE_4__* a_cred; int a_td; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct uio {int uio_iovcnt; int uio_resid; int uio_td; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct nfsnode {scalar_t__ n_size; TYPE_2__* n_accesscache; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct TYPE_11__ {scalar_t__ cr_uid; } ;
struct TYPE_10__ {int accesscache_misses; int accesscache_hits; } ;
struct TYPE_9__ {scalar_t__ uid; scalar_t__ stamp; int mode; } ;
struct TYPE_8__ {int mnt_flag; } ;


 int EACCES ;
 int EROFS ;
 int KDTRACE_NFS_ACCESSCACHE_GET_HIT (struct vnode*,scalar_t__,int) ;
 int KDTRACE_NFS_ACCESSCACHE_GET_MISS (struct vnode*,scalar_t__,int) ;
 int MNT_RDONLY ;
 int M_TEMP ;
 int M_WAITOK ;
 int NFSACCESS_DELETE ;
 int NFSACCESS_EXECUTE ;
 int NFSACCESS_EXTEND ;
 int NFSACCESS_LOOKUP ;
 int NFSACCESS_MODIFY ;
 int NFSACCESS_READ ;
 int NFSINCRGLOBAL (int ) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NFS_ACCESSCACHESIZE ;
 int NFS_DIRBLKSIZ ;
 int NFS_ISV34 (struct vnode*) ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VAPPEND ;
 int VDELETE ;
 int VDELETE_CHILD ;

 int VEXEC ;

 int VREAD ;

 struct nfsnode* VTONFS (struct vnode*) ;
 int VWRITE ;
 int VWRITE_ACL ;
 int VWRITE_ATTRIBUTES ;
 int VWRITE_NAMED_ATTRS ;
 int VWRITE_OWNER ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 int ncl_readdirrpc (struct vnode*,struct uio*,TYPE_4__*,int ) ;
 int ncl_readlinkrpc (struct vnode*,struct uio*,TYPE_4__*) ;
 int ncl_readrpc (struct vnode*,struct uio*,TYPE_4__*) ;
 int nfs34_access_otw (struct vnode*,int,int ,TYPE_4__*,int*) ;
 scalar_t__ nfsaccess_cache_timeout ;
 int nfsspec_access (struct vop_access_args*) ;
 TYPE_3__ nfsstatsv1 ;
 scalar_t__ time_second ;

__attribute__((used)) static int
nfs_access(struct vop_access_args *ap)
{
 struct vnode *vp = ap->a_vp;
 int error = 0, i, gotahit;
 u_int32_t mode, wmode, rmode;
 int v34 = NFS_ISV34(vp);
 struct nfsnode *np = VTONFS(vp);






 if ((ap->a_accmode & (VWRITE | VAPPEND | VWRITE_NAMED_ATTRS |
     VDELETE_CHILD | VWRITE_ATTRIBUTES | VDELETE | VWRITE_ACL |
     VWRITE_OWNER)) != 0 && (vp->v_mount->mnt_flag & MNT_RDONLY) != 0) {
  switch (vp->v_type) {
  case 128:
  case 130:
  case 129:
   return (EROFS);
  default:
   break;
  }
 }
 if (v34) {
  if (ap->a_accmode & VREAD)
   mode = NFSACCESS_READ;
  else
   mode = 0;
  if (vp->v_type != 130) {
   if (ap->a_accmode & VWRITE)
    mode |= (NFSACCESS_MODIFY | NFSACCESS_EXTEND);
   if (ap->a_accmode & VAPPEND)
    mode |= NFSACCESS_EXTEND;
   if (ap->a_accmode & VEXEC)
    mode |= NFSACCESS_EXECUTE;
   if (ap->a_accmode & VDELETE)
    mode |= NFSACCESS_DELETE;
  } else {
   if (ap->a_accmode & VWRITE)
    mode |= (NFSACCESS_MODIFY | NFSACCESS_EXTEND);
   if (ap->a_accmode & VAPPEND)
    mode |= NFSACCESS_EXTEND;
   if (ap->a_accmode & VEXEC)
    mode |= NFSACCESS_LOOKUP;
   if (ap->a_accmode & VDELETE)
    mode |= NFSACCESS_DELETE;
   if (ap->a_accmode & VDELETE_CHILD)
    mode |= NFSACCESS_MODIFY;
  }

  if (nfsaccess_cache_timeout > 0) {
   wmode = NFSACCESS_READ | NFSACCESS_MODIFY |
    NFSACCESS_EXTEND | NFSACCESS_EXECUTE |
    NFSACCESS_DELETE | NFSACCESS_LOOKUP;
  } else {
   wmode = mode;
  }





  gotahit = 0;
  NFSLOCKNODE(np);
  for (i = 0; i < NFS_ACCESSCACHESIZE; i++) {
   if (ap->a_cred->cr_uid == np->n_accesscache[i].uid) {
       if (time_second < (np->n_accesscache[i].stamp
    + nfsaccess_cache_timeout) &&
    (np->n_accesscache[i].mode & mode) == mode) {
    NFSINCRGLOBAL(nfsstatsv1.accesscache_hits);
    gotahit = 1;
       }
       break;
   }
  }
  NFSUNLOCKNODE(np);
  if (gotahit == 0) {



   NFSINCRGLOBAL(nfsstatsv1.accesscache_misses);
          error = nfs34_access_otw(vp, wmode, ap->a_td,
       ap->a_cred, &rmode);
   if (!error &&
       (rmode & mode) != mode)
    error = EACCES;
  }
  return (error);
 } else {
  if ((error = nfsspec_access(ap)) != 0) {
   return (error);
  }







  NFSLOCKNODE(np);
  if (ap->a_cred->cr_uid == 0 && (ap->a_accmode & VREAD)
      && VTONFS(vp)->n_size > 0) {
   struct iovec aiov;
   struct uio auio;
   char buf[1];

   NFSUNLOCKNODE(np);
   aiov.iov_base = buf;
   aiov.iov_len = 1;
   auio.uio_iov = &aiov;
   auio.uio_iovcnt = 1;
   auio.uio_offset = 0;
   auio.uio_resid = 1;
   auio.uio_segflg = UIO_SYSSPACE;
   auio.uio_rw = UIO_READ;
   auio.uio_td = ap->a_td;

   if (vp->v_type == 128)
    error = ncl_readrpc(vp, &auio, ap->a_cred);
   else if (vp->v_type == 130) {
    char* bp;
    bp = malloc(NFS_DIRBLKSIZ, M_TEMP, M_WAITOK);
    aiov.iov_base = bp;
    aiov.iov_len = auio.uio_resid = NFS_DIRBLKSIZ;
    error = ncl_readdirrpc(vp, &auio, ap->a_cred,
        ap->a_td);
    free(bp, M_TEMP);
   } else if (vp->v_type == 129)
    error = ncl_readlinkrpc(vp, &auio, ap->a_cred);
   else
    error = EACCES;
  } else
   NFSUNLOCKNODE(np);
  return (error);
 }
}
