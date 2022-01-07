
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u_int ;
struct vnode {int dummy; } ;
struct uio {long uio_resid; scalar_t__ uio_offset; TYPE_1__* uio_iov; struct thread* uio_td; } ;
struct thread {int td_proc; } ;
struct buf {long b_bufsize; long b_bcount; long b_resid; int b_ioflags; int b_error; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 int BIO_ERROR ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int PHOLD (int ) ;
 int PRELE (int ) ;
 int PRIBIO ;
 int bwait (struct buf*,int ,char*) ;
 struct thread* curthread ;
 int ffs_rawread_readahead (struct vnode*,scalar_t__,scalar_t__,long,struct thread*,struct buf*) ;
 int ffsraw_pbuf_zone ;
 int pbgetvp (struct vnode*,struct buf*) ;
 int pbrelvp (struct buf*) ;
 scalar_t__ rawreadahead ;
 struct buf* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct buf*) ;
 int vunmapbuf (struct buf*) ;

__attribute__((used)) static int
ffs_rawread_main(struct vnode *vp,
   struct uio *uio)
{
 int error, nerror;
 struct buf *bp, *nbp, *tbp;
 u_int iolen;
 caddr_t udata;
 long resid;
 off_t offset;
 struct thread *td;

 td = uio->uio_td ? uio->uio_td : curthread;
 udata = uio->uio_iov->iov_base;
 resid = uio->uio_resid;
 offset = uio->uio_offset;




 PHOLD(td->td_proc);

 error = 0;
 nerror = 0;

 bp = ((void*)0);
 nbp = ((void*)0);

 while (resid > 0) {

  if (bp == ((void*)0)) {
   bp = uma_zalloc(ffsraw_pbuf_zone, M_WAITOK);
   pbgetvp(vp, bp);
   error = ffs_rawread_readahead(vp, udata, offset,
           resid, td, bp);
   if (error != 0)
    break;

   if (resid > bp->b_bufsize) {
    if (rawreadahead != 0)
     nbp = uma_zalloc(ffsraw_pbuf_zone,
         M_NOWAIT);
    else
     nbp = ((void*)0);
    if (nbp != ((void*)0)) {
     pbgetvp(vp, nbp);

     nerror = ffs_rawread_readahead(vp,
               udata +
               bp->b_bufsize,
               offset +
               bp->b_bufsize,
               resid -
               bp->b_bufsize,
               td,
               nbp);
     if (nerror) {
      pbrelvp(nbp);
      uma_zfree(ffsraw_pbuf_zone,
          nbp);
      nbp = ((void*)0);
     }
    }
   }
  }

  bwait(bp, PRIBIO, "rawrd");
  vunmapbuf(bp);

  iolen = bp->b_bcount - bp->b_resid;
  if (iolen == 0 && (bp->b_ioflags & BIO_ERROR) == 0) {
   nerror = 0;
   break;
  }

  if ((bp->b_ioflags & BIO_ERROR) != 0) {
   error = bp->b_error;
   break;
  }
  resid -= iolen;
  udata += iolen;
  offset += iolen;
  if (iolen < bp->b_bufsize) {

   error = ffs_rawread_readahead(vp,
            udata,
            offset,
            bp->b_bufsize - iolen,
            td,
            bp);
   if (error != 0)
    break;
  } else if (nbp != ((void*)0)) {

   tbp = bp;
   bp = nbp;
   nbp = tbp;

   if (resid <= bp->b_bufsize) {
    pbrelvp(nbp);
    uma_zfree(ffsraw_pbuf_zone, nbp);
    nbp = ((void*)0);
   } else {
    nerror = ffs_rawread_readahead(vp,
              udata +
              bp->b_bufsize,
              offset +
              bp->b_bufsize,
              resid -
              bp->b_bufsize,
              td,
              nbp);
    if (nerror != 0) {
     pbrelvp(nbp);
     uma_zfree(ffsraw_pbuf_zone, nbp);
     nbp = ((void*)0);
    }
   }
  } else if (nerror != 0) {
   break;
  } else if (resid > 0) {
   error = ffs_rawread_readahead(vp, udata, offset,
            resid, td, bp);
   if (error != 0)
    break;
  }
 }

 if (bp != ((void*)0)) {
  pbrelvp(bp);
  uma_zfree(ffsraw_pbuf_zone, bp);
 }
 if (nbp != ((void*)0)) {
  bwait(nbp, PRIBIO, "rawrd");
  vunmapbuf(nbp);
  pbrelvp(nbp);
  uma_zfree(ffsraw_pbuf_zone, nbp);
 }

 if (error == 0)
  error = nerror;
 PRELE(td->td_proc);
 uio->uio_iov->iov_base = udata;
 uio->uio_resid = resid;
 uio->uio_offset = offset;
 return error;
}
