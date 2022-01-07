
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_quad_t ;
struct vnode {int v_mount; } ;
struct vattr {scalar_t__ va_type; scalar_t__ va_size; int va_mtime; int va_atime; } ;
struct TYPE_5__ {int tv_sec; } ;
struct TYPE_4__ {struct vattr na_vattr; } ;
struct nfsnode {int n_flag; int n_attrstamp; scalar_t__ n_size; int n_mtim; int n_atim; TYPE_2__ n_mtime; TYPE_1__ n_vattr; } ;
struct nfsmount {int nm_acdirmin; int nm_acdirmax; int nm_acregmin; int nm_acregmax; } ;
typedef int caddr_t ;
struct TYPE_6__ {int attrcache_hits; int attrcache_misses; } ;


 int ENOENT ;
 int KDTRACE_NFS_ATTRCACHE_GET_HIT (struct vnode*,struct vattr*) ;
 int KDTRACE_NFS_ATTRCACHE_GET_MISS (struct vnode*) ;
 int NACC ;
 int NCHG ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NMODIFIED ;
 int NUPD ;
 scalar_t__ VDIR ;
 struct nfsmount* VFSTONFS (int ) ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int bcopy (int ,int ,int) ;
 int ncl_pager_setsize (struct vnode*,int *) ;
 int nfs_acdebug ;
 int nfscl_mustflush (struct vnode*) ;
 TYPE_3__ nfsstatsv1 ;
 int printf (char*,int,...) ;
 int time_second ;
 int vnode_pager_setsize (struct vnode*,int ) ;

int
ncl_getattrcache(struct vnode *vp, struct vattr *vaper)
{
 struct nfsnode *np;
 struct vattr *vap;
 struct nfsmount *nmp;
 int timeo, mustflush;
 u_quad_t nsize;
 bool setnsize;

 np = VTONFS(vp);
 vap = &np->n_vattr.na_vattr;
 nmp = VFSTONFS(vp->v_mount);
 mustflush = nfscl_mustflush(vp);
 NFSLOCKNODE(np);

 timeo = (time_second - np->n_mtime.tv_sec) / 10;






 if (vap->va_type == VDIR) {
  if ((np->n_flag & NMODIFIED) || timeo < nmp->nm_acdirmin)
   timeo = nmp->nm_acdirmin;
  else if (timeo > nmp->nm_acdirmax)
   timeo = nmp->nm_acdirmax;
 } else {
  if ((np->n_flag & NMODIFIED) || timeo < nmp->nm_acregmin)
   timeo = nmp->nm_acregmin;
  else if (timeo > nmp->nm_acregmax)
   timeo = nmp->nm_acregmax;
 }
 if ((time_second - np->n_attrstamp) >= timeo &&
     (mustflush != 0 || np->n_attrstamp == 0)) {
  nfsstatsv1.attrcache_misses++;
  NFSUNLOCKNODE(np);
  KDTRACE_NFS_ATTRCACHE_GET_MISS(vp);
  return( ENOENT);
 }
 nfsstatsv1.attrcache_hits++;
 setnsize = 0;
 if (vap->va_size != np->n_size) {
  if (vap->va_type == VREG) {
   if (np->n_flag & NMODIFIED) {
    if (vap->va_size < np->n_size)
     vap->va_size = np->n_size;
    else
     np->n_size = vap->va_size;
   } else {
    np->n_size = vap->va_size;
   }
   setnsize = ncl_pager_setsize(vp, &nsize);
  } else {
   np->n_size = vap->va_size;
  }
 }
 bcopy((caddr_t)vap, (caddr_t)vaper, sizeof(struct vattr));
 if (np->n_flag & NCHG) {
  if (np->n_flag & NACC)
   vaper->va_atime = np->n_atim;
  if (np->n_flag & NUPD)
   vaper->va_mtime = np->n_mtim;
 }
 NFSUNLOCKNODE(np);
 if (setnsize)
  vnode_pager_setsize(vp, nsize);
 KDTRACE_NFS_ATTRCACHE_GET_HIT(vp, vap);
 return (0);
}
