
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;



__attribute__((used)) static void
fueword_slow0(vm_offset_t kva, void *arg)
{

 *(uint32_t *)arg = *(uint32_t *)kva;
}
