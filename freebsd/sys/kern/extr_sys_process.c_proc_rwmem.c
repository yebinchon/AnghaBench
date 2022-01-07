
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int * vm_map_t ;
typedef int u_int ;
struct uio {scalar_t__ uio_rw; scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct proc {TYPE_1__* p_vmspace; } ;
struct TYPE_2__ {int vm_map; } ;


 int EFAULT ;
 int ENOMEM ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int MA_NOTOWNED ;
 int PAGE_SIZE ;
 int PQ_ACTIVE ;
 int PROC_ASSERT_HELD (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 scalar_t__ UIO_WRITE ;
 int VM_FAULT_DIRTY ;
 int VM_FAULT_NORMAL ;
 int VM_PROT_COPY ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int min (int,scalar_t__) ;
 int trunc_page (int) ;
 int uiomove_fromphys (int *,int,int ,struct uio*) ;
 int vm_fault (int *,int,int,int,int *) ;
 scalar_t__ vm_map_check_protection (int *,int,int,int ) ;
 int vm_map_lock_read (int *) ;
 int vm_map_unlock_read (int *) ;
 int vm_page_unwire (int ,int ) ;
 int vm_sync_icache (int *,int,int ) ;

int
proc_rwmem(struct proc *p, struct uio *uio)
{
 vm_map_t map;
 vm_offset_t pageno;
 vm_prot_t reqprot;
 int error, fault_flags, page_offset, writing;






 PROC_ASSERT_HELD(p);
 PROC_LOCK_ASSERT(p, MA_NOTOWNED);




 map = &p->p_vmspace->vm_map;






 writing = uio->uio_rw == UIO_WRITE;
 reqprot = writing ? VM_PROT_COPY | VM_PROT_READ : VM_PROT_READ;
 fault_flags = writing ? VM_FAULT_DIRTY : VM_FAULT_NORMAL;





 do {
  vm_offset_t uva;
  u_int len;
  vm_page_t m;

  uva = (vm_offset_t)uio->uio_offset;




  pageno = trunc_page(uva);
  page_offset = uva - pageno;




  len = min(PAGE_SIZE - page_offset, uio->uio_resid);




  error = vm_fault(map, pageno, reqprot, fault_flags, &m);
  if (error != KERN_SUCCESS) {
   if (error == KERN_RESOURCE_SHORTAGE)
    error = ENOMEM;
   else
    error = EFAULT;
   break;
  }




  error = uiomove_fromphys(&m, page_offset, len, uio);


  if (writing && error == 0) {
   vm_map_lock_read(map);
   if (vm_map_check_protection(map, pageno, pageno +
       PAGE_SIZE, VM_PROT_EXECUTE))
    vm_sync_icache(map, uva, len);
   vm_map_unlock_read(map);
  }




  vm_page_unwire(m, PQ_ACTIVE);

 } while (error == 0 && uio->uio_resid > 0);

 return (error);
}
