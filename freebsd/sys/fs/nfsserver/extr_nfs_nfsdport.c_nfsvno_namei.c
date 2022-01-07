
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct uio {int uio_iovcnt; int uio_resid; int * uio_td; void* uio_segflg; int uio_rw; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct nfsrv_descript {int nd_flag; } ;
struct nfsexstuff {int dummy; } ;
struct componentname {int cn_flags; char* cn_nameptr; char* cn_pnbuf; int cn_cred; struct thread* cn_thread; } ;
struct nameidata {int ni_pathlen; struct vnode* ni_dvp; struct componentname ni_cnd; struct vnode* ni_startdir; struct vnode* ni_vp; struct vnode* ni_rootdir; int ni_next; scalar_t__ ni_loopcnt; int * ni_topdir; void* ni_segflg; scalar_t__ ni_lcf; } ;
struct iovec {char* iov_base; int iov_len; } ;


 int EINVAL ;
 int ELOOP ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOTDIR ;
 int ISSYMLINK ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int MAXPATHLEN ;
 scalar_t__ MAXSYMLINKS ;
 int M_WAITOK ;
 int ND_NFSV4 ;
 int ND_PUBLOOKUP ;
 int NFSBCOPY (int ,char*,int) ;
 int NFSERR_ACCES ;
 int NFSEXITCODE2 (int,struct nfsrv_descript*) ;
 scalar_t__ NFSVNO_EXPORTED (struct nfsexstuff*) ;
 scalar_t__ NFSVNO_EXRDONLY (struct nfsexstuff*) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int NOCROSSMOUNT ;
 int RDONLY ;
 int SAVENAME ;
 int SAVESTART ;
 int UIO_READ ;
 void* UIO_SYSSPACE ;
 scalar_t__ VDIR ;
 int VOP_READLINK (struct vnode*,struct uio*,int ) ;
 int VREF (struct vnode*) ;
 int WANTPARENT ;
 int lookup (struct nameidata*) ;
 int namei_zone ;
 scalar_t__ nfsrv_enable_crossmntpt ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 void* rootvnode ;
 char* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,char*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
nfsvno_namei(struct nfsrv_descript *nd, struct nameidata *ndp,
    struct vnode *dp, int islocked, struct nfsexstuff *exp, struct thread *p,
    struct vnode **retdirp)
{
 struct componentname *cnp = &ndp->ni_cnd;
 int i;
 struct iovec aiov;
 struct uio auio;
 int lockleaf = (cnp->cn_flags & LOCKLEAF) != 0, linklen;
 int error = 0;
 char *cp;

 *retdirp = ((void*)0);
 cnp->cn_nameptr = cnp->cn_pnbuf;
 ndp->ni_lcf = 0;



 if (dp->v_type != VDIR) {
  if (islocked)
   vput(dp);
  else
   vrele(dp);
  nfsvno_relpathbuf(ndp);
  error = ENOTDIR;
  goto out1;
 }
 if (islocked)
  NFSVOPUNLOCK(dp, 0);
 VREF(dp);
 *retdirp = dp;
 if (NFSVNO_EXRDONLY(exp))
  cnp->cn_flags |= RDONLY;
 ndp->ni_segflg = UIO_SYSSPACE;

 if (nd->nd_flag & ND_PUBLOOKUP) {
  ndp->ni_loopcnt = 0;
  if (cnp->cn_pnbuf[0] == '/') {
   vrele(dp);




   for (i = 1; i < ndp->ni_pathlen; i++)
    if (cnp->cn_pnbuf[i] != '/')
     break;
   if (i == ndp->ni_pathlen) {
    error = NFSERR_ACCES;
    goto out;
   }
   dp = rootvnode;
   VREF(dp);
  }
 } else if ((nfsrv_enable_crossmntpt == 0 && NFSVNO_EXPORTED(exp)) ||
     (nd->nd_flag & ND_NFSV4) == 0) {





  cnp->cn_flags |= NOCROSSMOUNT;
 }






 cnp->cn_thread = p;
 ndp->ni_startdir = dp;
 ndp->ni_rootdir = rootvnode;
 ndp->ni_topdir = ((void*)0);

 if (!lockleaf)
  cnp->cn_flags |= LOCKLEAF;
 for (;;) {
  cnp->cn_nameptr = cnp->cn_pnbuf;







  error = lookup(ndp);
  if (error)
   break;





  if ((cnp->cn_flags & ISSYMLINK) == 0) {
   if ((cnp->cn_flags & (SAVENAME | SAVESTART)) == 0)
    nfsvno_relpathbuf(ndp);
   if (ndp->ni_vp && !lockleaf)
    NFSVOPUNLOCK(ndp->ni_vp, 0);
   break;
  }




  if ((cnp->cn_flags & LOCKPARENT) && ndp->ni_pathlen == 1)
   NFSVOPUNLOCK(ndp->ni_dvp, 0);
  if (!(nd->nd_flag & ND_PUBLOOKUP)) {
   error = EINVAL;
   goto badlink2;
  }

  if (ndp->ni_loopcnt++ >= MAXSYMLINKS) {
   error = ELOOP;
   goto badlink2;
  }
  if (ndp->ni_pathlen > 1)
   cp = uma_zalloc(namei_zone, M_WAITOK);
  else
   cp = cnp->cn_pnbuf;
  aiov.iov_base = cp;
  aiov.iov_len = MAXPATHLEN;
  auio.uio_iov = &aiov;
  auio.uio_iovcnt = 1;
  auio.uio_offset = 0;
  auio.uio_rw = UIO_READ;
  auio.uio_segflg = UIO_SYSSPACE;
  auio.uio_td = ((void*)0);
  auio.uio_resid = MAXPATHLEN;
  error = VOP_READLINK(ndp->ni_vp, &auio, cnp->cn_cred);
  if (error) {
  badlink1:
   if (ndp->ni_pathlen > 1)
    uma_zfree(namei_zone, cp);
  badlink2:
   vrele(ndp->ni_dvp);
   vput(ndp->ni_vp);
   break;
  }
  linklen = MAXPATHLEN - auio.uio_resid;
  if (linklen == 0) {
   error = ENOENT;
   goto badlink1;
  }
  if (linklen + ndp->ni_pathlen >= MAXPATHLEN) {
   error = ENAMETOOLONG;
   goto badlink1;
  }




  if (ndp->ni_pathlen > 1) {
   NFSBCOPY(ndp->ni_next, cp + linklen, ndp->ni_pathlen);
   uma_zfree(namei_zone, cnp->cn_pnbuf);
   cnp->cn_pnbuf = cp;
  } else
   cnp->cn_pnbuf[linklen] = '\0';
  ndp->ni_pathlen += linklen;
  vput(ndp->ni_vp);
  ndp->ni_vp = ((void*)0);

  if (cnp->cn_pnbuf[0] == '/') {
   vrele(ndp->ni_dvp);
   ndp->ni_dvp = ndp->ni_rootdir;
   VREF(ndp->ni_dvp);
  }
  ndp->ni_startdir = ndp->ni_dvp;
  ndp->ni_dvp = ((void*)0);
 }
 if (!lockleaf)
  cnp->cn_flags &= ~LOCKLEAF;

out:
 if (error) {
  nfsvno_relpathbuf(ndp);
  ndp->ni_vp = ((void*)0);
  ndp->ni_dvp = ((void*)0);
  ndp->ni_startdir = ((void*)0);
 } else if ((ndp->ni_cnd.cn_flags & (WANTPARENT|LOCKPARENT)) == 0) {
  ndp->ni_dvp = ((void*)0);
 }

out1:
 NFSEXITCODE2(error, nd);
 return (error);
}
