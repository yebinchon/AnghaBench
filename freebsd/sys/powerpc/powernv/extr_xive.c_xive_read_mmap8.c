
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int volatile uint64_t ;



__attribute__((used)) static uint64_t
xive_read_mmap8(vm_offset_t addr)
{
 return (*(volatile uint64_t *)addr);
}
