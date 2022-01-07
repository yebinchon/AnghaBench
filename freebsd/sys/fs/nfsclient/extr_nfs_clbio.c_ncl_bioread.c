
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uoff_t ;
typedef scalar_t__ u_quad_t ;
struct TYPE_4__ {int bo_bsize; } ;
struct vnode {int v_type; TYPE_2__ v_bufobj; int v_mount; } ;
struct uio {scalar_t__ uio_rw; scalar_t__ uio_resid; scalar_t__ uio_offset; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsnode {scalar_t__ n_size; int n_direofoffset; } ;
struct nfsmount {int nm_flag; int nm_state; scalar_t__ nm_rsize; scalar_t__ nm_readdirsize; scalar_t__ nm_maxfilesize; int nm_readahead; int nm_mtx; } ;
struct buf {int b_flags; int b_resid; scalar_t__ b_data; int b_ioflags; void* b_iocmd; } ;
typedef scalar_t__ off_t ;
typedef int daddr_t ;
struct TYPE_3__ {int biocache_readdirs; int biocache_readlinks; int biocache_reads; } ;


 int BIO_ERROR ;
 void* BIO_READ ;
 scalar_t__ BKVASIZE ;
 int B_ASYNC ;
 int B_CACHE ;
 int B_DELWRI ;
 int B_INVAL ;
 int EFBIG ;
 int EINTR ;
 int EINVAL ;
 int IO_DIRECT ;
 int IO_SEQSHIFT ;
 int KASSERT (int,char*) ;
 int MIN (unsigned int,int) ;
 int NFSERR_BAD_COOKIE ;
 int NFSINCRGLOBAL (int ) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSMNT_NFSV3 ;
 int NFSSTA_GOTFSINFO ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NFS_DIRBLKSIZ ;
 int NFS_MAXPATHLEN ;
 scalar_t__ UIO_READ ;

 struct nfsmount* VFSTONFS (int ) ;


 struct nfsnode* VTONFS (struct vnode*) ;
 int brelse (struct buf*) ;
 int * incore (TYPE_2__*,int) ;
 int lmin (unsigned int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ncl_asyncio (struct nfsmount*,struct buf*,struct ucred*,struct thread*) ;
 int ncl_doio (struct vnode*,struct buf*,struct ucred*,struct thread*,int ) ;
 int ncl_fsinfo (struct nfsmount*,struct vnode*,struct ucred*,struct thread*) ;
 int ncl_invaldir (struct vnode*) ;
 int ncl_readrpc (struct vnode*,struct uio*,struct ucred*) ;
 int ncl_vinvalbuf (struct vnode*,int ,struct thread*,int) ;
 scalar_t__ newnfs_directio_enable ;
 int newnfs_iosize (struct nfsmount*) ;
 int newnfs_sigintr (struct nfsmount*,struct thread*) ;
 int nfs_bioread_check_cons (struct vnode*,struct thread*,struct ucred*) ;
 struct buf* nfs_getcacheblk (struct vnode*,int,int,struct thread*) ;
 TYPE_1__ nfsstatsv1 ;
 int printf (char*,int) ;
 int vfs_busy_pages (struct buf*,int ) ;
 int vfs_unbusy_pages (struct buf*) ;
 int vn_io_fault_uiomove (scalar_t__,int,struct uio*) ;

int
ncl_bioread(struct vnode *vp, struct uio *uio, int ioflag, struct ucred *cred)
{
 struct nfsnode *np = VTONFS(vp);
 int biosize, i;
 struct buf *bp, *rabp;
 struct thread *td;
 struct nfsmount *nmp = VFSTONFS(vp->v_mount);
 daddr_t lbn, rabn;
 int bcount;
 int seqcount;
 int nra, error = 0, n = 0, on = 0;
 off_t tmp_off;

 KASSERT(uio->uio_rw == UIO_READ, ("ncl_read mode"));
 if (uio->uio_resid == 0)
  return (0);
 if (uio->uio_offset < 0)
  return (EINVAL);
 td = uio->uio_td;

 mtx_lock(&nmp->nm_mtx);
 if ((nmp->nm_flag & NFSMNT_NFSV3) != 0 &&
     (nmp->nm_state & NFSSTA_GOTFSINFO) == 0) {
  mtx_unlock(&nmp->nm_mtx);
  (void)ncl_fsinfo(nmp, vp, cred, td);
  mtx_lock(&nmp->nm_mtx);
 }
 if (nmp->nm_rsize == 0 || nmp->nm_readdirsize == 0)
  (void) newnfs_iosize(nmp);

 tmp_off = uio->uio_offset + uio->uio_resid;
 if (vp->v_type != 130 &&
     (tmp_off > nmp->nm_maxfilesize || tmp_off < uio->uio_offset)) {
  mtx_unlock(&nmp->nm_mtx);
  return (EFBIG);
 }
 mtx_unlock(&nmp->nm_mtx);

 if (newnfs_directio_enable && (ioflag & IO_DIRECT) && (vp->v_type == 128))

  return ncl_readrpc(vp, uio, cred);

 biosize = vp->v_bufobj.bo_bsize;
 seqcount = (int)((off_t)(ioflag >> IO_SEQSHIFT) * biosize / BKVASIZE);

 error = nfs_bioread_check_cons(vp, td, cred);
 if (error)
  return error;

 do {
     u_quad_t nsize;

     NFSLOCKNODE(np);
     nsize = np->n_size;
     NFSUNLOCKNODE(np);

     switch (vp->v_type) {
     case 128:
  NFSINCRGLOBAL(nfsstatsv1.biocache_reads);
  lbn = uio->uio_offset / biosize;
  on = uio->uio_offset - (lbn * biosize);




  if (nmp->nm_readahead > 0) {
      for (nra = 0; nra < nmp->nm_readahead && nra < seqcount &&
   (off_t)(lbn + 1 + nra) * biosize < nsize; nra++) {
   rabn = lbn + 1 + nra;
   if (incore(&vp->v_bufobj, rabn) == ((void*)0)) {
       rabp = nfs_getcacheblk(vp, rabn, biosize, td);
       if (!rabp) {
    error = newnfs_sigintr(nmp, td);
    return (error ? error : EINTR);
       }
       if ((rabp->b_flags & (B_CACHE|B_DELWRI)) == 0) {
    rabp->b_flags |= B_ASYNC;
    rabp->b_iocmd = BIO_READ;
    vfs_busy_pages(rabp, 0);
    if (ncl_asyncio(nmp, rabp, cred, td)) {
        rabp->b_flags |= B_INVAL;
        rabp->b_ioflags |= BIO_ERROR;
        vfs_unbusy_pages(rabp);
        brelse(rabp);
        break;
    }
       } else {
    brelse(rabp);
       }
   }
      }
  }


  bcount = biosize;
  if ((off_t)lbn * biosize >= nsize) {
   bcount = 0;
  } else if ((off_t)(lbn + 1) * biosize > nsize) {
   bcount = nsize - (off_t)lbn * biosize;
  }
  bp = nfs_getcacheblk(vp, lbn, bcount, td);

  if (!bp) {
   error = newnfs_sigintr(nmp, td);
   return (error ? error : EINTR);
  }






  if ((bp->b_flags & B_CACHE) == 0) {
      bp->b_iocmd = BIO_READ;
      vfs_busy_pages(bp, 0);
      error = ncl_doio(vp, bp, cred, td, 0);
      if (error) {
   brelse(bp);
   return (error);
      }
  }
  n = 0;
  if (on < bcount)
   n = MIN((unsigned)(bcount - on), uio->uio_resid);
  break;
     case 129:
  NFSINCRGLOBAL(nfsstatsv1.biocache_readlinks);
  bp = nfs_getcacheblk(vp, (daddr_t)0, NFS_MAXPATHLEN, td);
  if (!bp) {
   error = newnfs_sigintr(nmp, td);
   return (error ? error : EINTR);
  }
  if ((bp->b_flags & B_CACHE) == 0) {
      bp->b_iocmd = BIO_READ;
      vfs_busy_pages(bp, 0);
      error = ncl_doio(vp, bp, cred, td, 0);
      if (error) {
   bp->b_ioflags |= BIO_ERROR;
   brelse(bp);
   return (error);
      }
  }
  n = MIN(uio->uio_resid, NFS_MAXPATHLEN - bp->b_resid);
  on = 0;
  break;
     case 130:
  NFSINCRGLOBAL(nfsstatsv1.biocache_readdirs);
  if (np->n_direofoffset
      && uio->uio_offset >= np->n_direofoffset) {
      return (0);
  }
  lbn = (uoff_t)uio->uio_offset / NFS_DIRBLKSIZ;
  on = uio->uio_offset & (NFS_DIRBLKSIZ - 1);
  bp = nfs_getcacheblk(vp, lbn, NFS_DIRBLKSIZ, td);
  if (!bp) {
      error = newnfs_sigintr(nmp, td);
      return (error ? error : EINTR);
  }
  if ((bp->b_flags & B_CACHE) == 0) {
      bp->b_iocmd = BIO_READ;
      vfs_busy_pages(bp, 0);
      error = ncl_doio(vp, bp, cred, td, 0);
      if (error) {
       brelse(bp);
      }
      while (error == NFSERR_BAD_COOKIE) {
   ncl_invaldir(vp);
   error = ncl_vinvalbuf(vp, 0, td, 1);
   for (i = 0; i <= lbn && !error; i++) {
       if (np->n_direofoffset
    && (i * NFS_DIRBLKSIZ) >= np->n_direofoffset)
        return (0);
       bp = nfs_getcacheblk(vp, i, NFS_DIRBLKSIZ, td);
       if (!bp) {
    error = newnfs_sigintr(nmp, td);
    return (error ? error : EINTR);
       }
       if ((bp->b_flags & B_CACHE) == 0) {
        bp->b_iocmd = BIO_READ;
        vfs_busy_pages(bp, 0);
        error = ncl_doio(vp, bp, cred, td, 0);




        if (error == 0 && (bp->b_flags & B_INVAL))
         break;
       }






       if (error || i < lbn)
        brelse(bp);
   }
      }





      if (error)
       return (error);
  }






  if (nmp->nm_readahead > 0 &&
      (bp->b_flags & B_INVAL) == 0 &&
      (np->n_direofoffset == 0 ||
      (lbn + 1) * NFS_DIRBLKSIZ < np->n_direofoffset) &&
      incore(&vp->v_bufobj, lbn + 1) == ((void*)0)) {
   rabp = nfs_getcacheblk(vp, lbn + 1, NFS_DIRBLKSIZ, td);
   if (rabp) {
       if ((rabp->b_flags & (B_CACHE|B_DELWRI)) == 0) {
    rabp->b_flags |= B_ASYNC;
    rabp->b_iocmd = BIO_READ;
    vfs_busy_pages(rabp, 0);
    if (ncl_asyncio(nmp, rabp, cred, td)) {
        rabp->b_flags |= B_INVAL;
        rabp->b_ioflags |= BIO_ERROR;
        vfs_unbusy_pages(rabp);
        brelse(rabp);
    }
       } else {
    brelse(rabp);
       }
   }
  }
  n = lmin(uio->uio_resid, NFS_DIRBLKSIZ - bp->b_resid - on);
  if (np->n_direofoffset && n > np->n_direofoffset - uio->uio_offset)
   n = np->n_direofoffset - uio->uio_offset;
  break;
     default:
  printf(" ncl_bioread: type %x unexpected\n", vp->v_type);
  bp = ((void*)0);
  break;
     }

     if (n > 0) {
      error = vn_io_fault_uiomove(bp->b_data + on, (int)n, uio);
     }
     if (vp->v_type == 129)
  n = 0;
     if (bp != ((void*)0))
  brelse(bp);
 } while (error == 0 && uio->uio_resid > 0 && n > 0);
 return (error);
}
