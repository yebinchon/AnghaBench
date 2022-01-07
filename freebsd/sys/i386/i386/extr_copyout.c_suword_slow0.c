
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;



__attribute__((used)) static void
suword_slow0(vm_offset_t kva, void *arg)
{

 *(int *)kva = *(uint32_t *)arg;
}
