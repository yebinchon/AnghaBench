
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_offset_t ;
struct copyin_arg0 {size_t len; void* kc; } ;


 int EFAULT ;
 size_t PAGE_SIZE ;
 size_t TRAMP_COPYOUT_SZ ;
 uintptr_t VM_MAXUSER_ADDRESS ;
 scalar_t__ copyin_fast_tramp (void const*,void*,size_t,int ) ;
 int copyin_slow0 ;
 scalar_t__ cp_slow0 (void*,size_t,int,int ,struct copyin_arg0*) ;
 scalar_t__ fast_copyout ;
 int pmap_get_kcr3 () ;
 void* round_page (void*) ;

int
copyin(const void *udaddr, void *kaddr, size_t len)
{
 struct copyin_arg0 ca;
 vm_offset_t uc;
 size_t plen;

 if ((uintptr_t)udaddr + len < (uintptr_t)udaddr ||
     (uintptr_t)udaddr + len > VM_MAXUSER_ADDRESS)
  return (EFAULT);
 if (len == 0 || (fast_copyout && len <= TRAMP_COPYOUT_SZ &&
     copyin_fast_tramp(udaddr, kaddr, len, pmap_get_kcr3()) == 0))
  return (0);
 for (plen = 0, uc = (vm_offset_t)udaddr, ca.kc = (vm_offset_t)kaddr;
     plen < len; uc += ca.len, ca.kc += ca.len, plen += ca.len) {
  ca.len = round_page(uc) - uc;
  if (ca.len == 0)
   ca.len = PAGE_SIZE;
  if (plen + ca.len > len)
   ca.len = len - plen;
  if (cp_slow0(uc, ca.len, 0, copyin_slow0, &ca) != 0)
   return (EFAULT);
 }
 return (0);
}
