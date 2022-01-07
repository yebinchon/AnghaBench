
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;


 int KASSERT (int,char*) ;
 int KERN_SUCCESS ;
 int KVA_QUANTUM ;
 int KVA_QUANTUM_SHIFT ;
 scalar_t__ VM_DOMAIN_EMPTY (int) ;
 int kernel_object ;
 int kmem_back_domain (int,int ,int,int,int) ;
 int kmem_unback (int ,int,int) ;
 int roundup2 (int,int ) ;
 int vm_ndomains ;

int
kmem_back(vm_object_t object, vm_offset_t addr, vm_size_t size, int flags)
{
 vm_offset_t end, next, start;
 int domain, rv;

 KASSERT(object == kernel_object,
     ("kmem_back: only supports kernel object."));

 for (start = addr, end = addr + size; addr < end; addr = next) {




  if (vm_ndomains > 1) {
   domain = (addr >> KVA_QUANTUM_SHIFT) % vm_ndomains;
   while (VM_DOMAIN_EMPTY(domain))
    domain++;
   next = roundup2(addr + 1, KVA_QUANTUM);
   if (next > end || next < start)
    next = end;
  } else {
   domain = 0;
   next = end;
  }
  rv = kmem_back_domain(domain, object, addr, next - addr, flags);
  if (rv != KERN_SUCCESS) {
   kmem_unback(object, start, addr - start);
   break;
  }
 }
 return (rv);
}
