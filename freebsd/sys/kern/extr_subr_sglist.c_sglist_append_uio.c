
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {size_t uio_resid; scalar_t__ uio_segflg; int uio_iovcnt; TYPE_2__* uio_td; struct iovec* uio_iov; } ;
struct sgsave {int dummy; } ;
struct sglist {scalar_t__ sg_maxseg; } ;
struct iovec {int iov_base; int iov_len; } ;
typedef int * pmap_t ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {int p_vmspace; } ;


 int EINVAL ;
 int KASSERT (int ,char*) ;
 size_t MIN (size_t,int ) ;
 int SGLIST_RESTORE (struct sglist*,struct sgsave) ;
 int SGLIST_SAVE (struct sglist*,struct sgsave) ;
 scalar_t__ UIO_USERSPACE ;
 int _sglist_append_buf (struct sglist*,int ,size_t,int *,int *) ;
 int * vmspace_pmap (int ) ;

int
sglist_append_uio(struct sglist *sg, struct uio *uio)
{
 struct iovec *iov;
 struct sgsave save;
 size_t resid, minlen;
 pmap_t pmap;
 int error, i;

 if (sg->sg_maxseg == 0)
  return (EINVAL);

 resid = uio->uio_resid;
 iov = uio->uio_iov;

 if (uio->uio_segflg == UIO_USERSPACE) {
  KASSERT(uio->uio_td != ((void*)0),
      ("sglist_append_uio: USERSPACE but no thread"));
  pmap = vmspace_pmap(uio->uio_td->td_proc->p_vmspace);
 } else
  pmap = ((void*)0);

 error = 0;
 SGLIST_SAVE(sg, save);
 for (i = 0; i < uio->uio_iovcnt && resid != 0; i++) {




  minlen = MIN(resid, iov[i].iov_len);
  if (minlen > 0) {
   error = _sglist_append_buf(sg, iov[i].iov_base, minlen,
       pmap, ((void*)0));
   if (error) {
    SGLIST_RESTORE(sg, save);
    return (error);
   }
   resid -= minlen;
  }
 }
 return (0);
}
