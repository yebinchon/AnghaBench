
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef void* vm_offset_t ;
typedef scalar_t__ u_int ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; scalar_t__ uio_rw; scalar_t__ uio_iovcnt; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 scalar_t__ CDEV_MINOR_KMEM ;
 scalar_t__ CDEV_MINOR_MEM ;
 int EFAULT ;
 int EIO ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ UIO_READ ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 scalar_t__ cpu_getmaxphyaddr () ;
 scalar_t__ dev2unit (struct cdev*) ;
 int kernacc (int ,scalar_t__,int ) ;
 int kernel_pmap ;
 int memsxlock ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int panic (char*) ;
 scalar_t__ pmap_extract (int ,void*) ;
 int pmap_invalidate_page (int ,void*) ;
 int pmap_kenter (void*,scalar_t__) ;
 int pmap_qremove (void*,int) ;
 int * ptvmmap ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 void* trunc_page (scalar_t__) ;
 int uiomove (int ,int,struct uio*) ;

int
memrw(struct cdev *dev, struct uio *uio, int flags)
{
 int o;
 u_int c = 0;
 vm_paddr_t pa;
 struct iovec *iov;
 int error = 0;
 vm_offset_t addr;

 if (dev2unit(dev) != CDEV_MINOR_MEM && dev2unit(dev) != CDEV_MINOR_KMEM)
  return EIO;

 if (dev2unit(dev) == CDEV_MINOR_KMEM && uio->uio_resid > 0) {
  if (!kernacc((caddr_t)(int)uio->uio_offset, uio->uio_resid,
      uio->uio_rw == UIO_READ ? VM_PROT_READ : VM_PROT_WRITE))
   return (EFAULT);
 }

 while (uio->uio_resid > 0 && error == 0) {
  iov = uio->uio_iov;
  if (iov->iov_len == 0) {
   uio->uio_iov++;
   uio->uio_iovcnt--;
   if (uio->uio_iovcnt < 0)
    panic("memrw");
   continue;
  }
  if (dev2unit(dev) == CDEV_MINOR_MEM) {
   if (uio->uio_offset > cpu_getmaxphyaddr()) {
    error = EFAULT;
    break;
   }
   pa = trunc_page(uio->uio_offset);
  } else {
   addr = trunc_page(uio->uio_offset);
   pa = pmap_extract(kernel_pmap, addr);
   if (pa == 0)
    return EFAULT;

  }
  sx_xlock(&memsxlock);
  pmap_kenter((vm_offset_t)ptvmmap, pa);
  pmap_invalidate_page(kernel_pmap,(vm_offset_t)ptvmmap);

  o = (int)uio->uio_offset & PAGE_MASK;
  c = PAGE_SIZE - o;
  c = min(c, (u_int)iov->iov_len);
  error = uiomove((caddr_t)&ptvmmap[o], (int)c, uio);
  pmap_qremove((vm_offset_t)ptvmmap, 1);
  sx_xunlock(&memsxlock);
 }

 return (error);
}
