
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
struct vm_page {int dummy; } ;
struct uio {int uio_resid; scalar_t__ uio_offset; } ;
struct nvdimm_spa_dev {scalar_t__ spa_len; int spa_phys_base; int * spa_kva; int spa_memattr; } ;
typedef int off_t ;
typedef int m ;


 int INT_MAX ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int bzero (struct vm_page*,int) ;
 int trunc_page (int) ;
 int uiomove (char*,int,struct uio*) ;
 int uiomove_fromphys (struct vm_page**,int,int,struct uio*) ;
 int vm_page_initfake (struct vm_page*,int ,int ) ;
 int vm_page_updatefake (struct vm_page*,int ,int ) ;

__attribute__((used)) static int
nvdimm_spa_uio(struct nvdimm_spa_dev *dev, struct uio *uio)
{
 struct vm_page m, *ma;
 off_t off;
 vm_memattr_t mattr;
 int error, n;

 error = 0;
 if (dev->spa_kva == ((void*)0)) {
  mattr = dev->spa_memattr;
  bzero(&m, sizeof(m));
  vm_page_initfake(&m, 0, mattr);
  ma = &m;
  while (uio->uio_resid > 0) {
   if (uio->uio_offset >= dev->spa_len)
    break;
   off = dev->spa_phys_base + uio->uio_offset;
   vm_page_updatefake(&m, trunc_page(off), mattr);
   n = PAGE_SIZE;
   if (n > uio->uio_resid)
    n = uio->uio_resid;
   error = uiomove_fromphys(&ma, off & PAGE_MASK, n, uio);
   if (error != 0)
    break;
  }
 } else {
  while (uio->uio_resid > 0) {
   if (uio->uio_offset >= dev->spa_len)
    break;
   n = INT_MAX;
   if (n > uio->uio_resid)
    n = uio->uio_resid;
   if (uio->uio_offset + n > dev->spa_len)
    n = dev->spa_len - uio->uio_offset;
   error = uiomove((char *)dev->spa_kva + uio->uio_offset,
       n, uio);
   if (error != 0)
    break;
  }
 }
 return (error);
}
