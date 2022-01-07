
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copyout (void const*,void*,size_t) ;
 int vm_fault_disable_pagefaults () ;
 int vm_fault_enable_pagefaults (int) ;

int
copyout_nofault(const void *kaddr, void *udaddr, size_t len)
{
 int error, save;

 save = vm_fault_disable_pagefaults();
 error = copyout(kaddr, udaddr, len);
 vm_fault_enable_pagefaults(save);
 return (error);
}
