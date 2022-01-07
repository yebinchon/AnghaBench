
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vm_page* vm_page_t ;
typedef int vm_offset_t ;
typedef scalar_t__ u_int ;
struct vm_page {int phys_addr; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; int uio_offset; int uio_rw; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ ssize_t ;




 int EFAULT ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_IN_DMAP (int) ;
 int PHYS_TO_DMAP (int) ;
 int UIO_READ ;
 int VIRT_IN_DMAP (int) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int dev2unit (struct cdev*) ;
 int kernacc (void*,scalar_t__,int ) ;
 int kernel_pmap ;
 int panic (char*) ;
 int pmap_extract (int ,int) ;
 int trunc_page (int) ;
 int uiomove (void*,scalar_t__,struct uio*) ;
 int uiomove_fromphys (struct vm_page**,int,scalar_t__,struct uio*) ;
 scalar_t__ ulmin (scalar_t__,scalar_t__) ;

int
memrw(struct cdev *dev, struct uio *uio, int flags)
{
 ssize_t orig_resid;
 vm_offset_t off, v;
 struct iovec *iov;
 struct vm_page m;
 vm_page_t marr;
 u_int cnt;
 int error;

 error = 0;
 orig_resid = uio->uio_resid;
 while (uio->uio_resid > 0 && error == 0) {
  iov = uio->uio_iov;
  if (iov->iov_len == 0) {
   uio->uio_iov++;
   uio->uio_iovcnt--;
   if (uio->uio_iovcnt < 0)
    panic("memrw");
   continue;
  }

  v = uio->uio_offset;
  off = v & PAGE_MASK;
  cnt = ulmin(iov->iov_len, PAGE_SIZE - (u_int)off);
  if (cnt == 0)
   continue;

  switch(dev2unit(dev)) {
  case 129:

   if (VIRT_IN_DMAP(v)) {
    error = uiomove((void *)v, cnt, uio);
    break;
   }

   if (!kernacc((void *)v, cnt, uio->uio_rw == UIO_READ ?
       VM_PROT_READ : VM_PROT_WRITE)) {
    error = EFAULT;
    break;
   }


   v = pmap_extract(kernel_pmap, v);
   if (v == 0) {
    error = EFAULT;
    break;
   }


  case 128:

   if (PHYS_IN_DMAP(v)) {
    v = PHYS_TO_DMAP(v);
    error = uiomove((void *)v, cnt, uio);
    break;
   }


   m.phys_addr = trunc_page(v);
   marr = &m;
   uiomove_fromphys(&marr, off, cnt, uio);
   break;
  }
 }





 if (uio->uio_resid != orig_resid)
  error = 0;

 return (error);
}
