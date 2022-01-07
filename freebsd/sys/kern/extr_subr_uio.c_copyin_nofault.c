
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copyin (void const*,void*,size_t) ;
 int vm_fault_disable_pagefaults () ;
 int vm_fault_enable_pagefaults (int) ;

int
copyin_nofault(const void *udaddr, void *kaddr, size_t len)
{
 int error, save;

 save = vm_fault_disable_pagefaults();
 error = copyin(udaddr, kaddr, len);
 vm_fault_enable_pagefaults(save);
 return (error);
}
