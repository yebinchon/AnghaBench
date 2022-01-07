
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 scalar_t__* phys_avail ;

vm_paddr_t
vm_phys_avail_size(int i)
{

 return (phys_avail[i + 1] - phys_avail[i]);
}
