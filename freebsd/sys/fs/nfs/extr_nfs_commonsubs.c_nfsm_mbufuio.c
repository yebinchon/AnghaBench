
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_iovcnt; scalar_t__ uio_segflg; int uio_offset; int uio_resid; TYPE_1__* uio_iov; } ;
struct nfsrv_descript {char* nd_dpos; int * nd_md; } ;
typedef int * mbuf_t ;
struct TYPE_2__ {int iov_len; char* iov_base; int (* iov_op ) (char*,char*,int) ;} ;


 int CAST_USER_ADDR_T (char*) ;
 int EBADRPC ;
 int KASSERT (int,char*) ;
 int NFSBCOPY (char*,char*,int) ;
 int NFSEXITCODE2 (int,struct nfsrv_descript*) ;
 char* NFSMTOD (int *,int ) ;
 int NFSM_RNDUP (int) ;
 scalar_t__ UIO_SYSSPACE ;
 int caddr_t ;
 int copyout (char*,int ,int) ;
 int mbuf_len (int *) ;
 int * mbuf_next (int *) ;
 int nfsm_advance (struct nfsrv_descript*,long,int) ;
 int stub1 (char*,char*,int) ;

int
nfsm_mbufuio(struct nfsrv_descript *nd, struct uio *uiop, int siz)
{
 char *mbufcp, *uiocp;
 int xfer, left, len;
 mbuf_t mp;
 long uiosiz, rem;
 int error = 0;

 mp = nd->nd_md;
 mbufcp = nd->nd_dpos;
 len = NFSMTOD(mp, caddr_t) + mbuf_len(mp) - mbufcp;
 rem = NFSM_RNDUP(siz) - siz;
 while (siz > 0) {
  if (uiop->uio_iovcnt <= 0 || uiop->uio_iov == ((void*)0)) {
   error = EBADRPC;
   goto out;
  }
  left = uiop->uio_iov->iov_len;
  uiocp = uiop->uio_iov->iov_base;
  if (left > siz)
   left = siz;
  uiosiz = left;
  while (left > 0) {
   while (len == 0) {
    mp = mbuf_next(mp);
    if (mp == ((void*)0)) {
     error = EBADRPC;
     goto out;
    }
    mbufcp = NFSMTOD(mp, caddr_t);
    len = mbuf_len(mp);
    KASSERT(len >= 0,
        ("len %d, corrupted mbuf?", len));
   }
   xfer = (left > len) ? len : left;







   if (uiop->uio_segflg == UIO_SYSSPACE)
    NFSBCOPY(mbufcp, uiocp, xfer);
   else
    copyout(mbufcp, CAST_USER_ADDR_T(uiocp), xfer);
   left -= xfer;
   len -= xfer;
   mbufcp += xfer;
   uiocp += xfer;
   uiop->uio_offset += xfer;
   uiop->uio_resid -= xfer;
  }
  if (uiop->uio_iov->iov_len <= siz) {
   uiop->uio_iovcnt--;
   uiop->uio_iov++;
  } else {
   uiop->uio_iov->iov_base = (void *)
    ((char *)uiop->uio_iov->iov_base + uiosiz);
   uiop->uio_iov->iov_len -= uiosiz;
  }
  siz -= uiosiz;
 }
 nd->nd_dpos = mbufcp;
 nd->nd_md = mp;
 if (rem > 0) {
  if (len < rem)
   error = nfsm_advance(nd, rem, len);
  else
   nd->nd_dpos += rem;
 }

out:
 NFSEXITCODE2(error, nd);
 return (error);
}
