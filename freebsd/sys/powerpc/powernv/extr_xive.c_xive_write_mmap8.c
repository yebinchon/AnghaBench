
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;



__attribute__((used)) static void
xive_write_mmap8(vm_offset_t addr, uint64_t val)
{
 *(uint64_t *)(addr) = val;
}
