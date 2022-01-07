
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {scalar_t__ uio_segflg; size_t uio_offset; scalar_t__ uio_resid; int uio_iovcnt; struct iovec* uio_iov; TYPE_2__* uio_td; } ;
struct sglist {scalar_t__ sg_maxseg; } ;
struct iovec {int iov_len; char* iov_base; } ;
typedef int * pmap_t ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {int p_vmspace; } ;


 int EINVAL ;
 int KASSERT (int ,char*) ;
 scalar_t__ UIO_USERSPACE ;
 int _sglist_append_buf (struct sglist*,char*,int,int *,size_t*) ;
 int * vmspace_pmap (int ) ;

int
sglist_consume_uio(struct sglist *sg, struct uio *uio, size_t resid)
{
 struct iovec *iov;
 size_t done;
 pmap_t pmap;
 int error, len;

 if (sg->sg_maxseg == 0)
  return (EINVAL);

 if (uio->uio_segflg == UIO_USERSPACE) {
  KASSERT(uio->uio_td != ((void*)0),
      ("sglist_consume_uio: USERSPACE but no thread"));
  pmap = vmspace_pmap(uio->uio_td->td_proc->p_vmspace);
 } else
  pmap = ((void*)0);

 error = 0;
 while (resid > 0 && uio->uio_resid) {
  iov = uio->uio_iov;
  len = iov->iov_len;
  if (len == 0) {
   uio->uio_iov++;
   uio->uio_iovcnt--;
   continue;
  }
  if (len > resid)
   len = resid;





  error = _sglist_append_buf(sg, iov->iov_base, len, pmap, &done);
  iov->iov_base = (char *)iov->iov_base + done;
  iov->iov_len -= done;
  uio->uio_resid -= done;
  uio->uio_offset += done;
  resid -= done;
  if (error)
   break;
 }
 return (0);
}
